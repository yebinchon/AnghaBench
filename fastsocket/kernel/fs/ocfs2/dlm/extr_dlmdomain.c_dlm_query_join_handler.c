
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u32 ;
struct o2net_msg {scalar_t__ buf; } ;
struct TYPE_4__ {int pv_minor; } ;
struct dlm_query_join_request {int node_idx; TYPE_2__ fs_proto; TYPE_2__ dlm_proto; int node_map; int name_len; int domain; } ;
struct dlm_query_join_packet {void* code; int fs_minor; int dlm_minor; } ;
struct TYPE_3__ {int state; } ;
struct dlm_ctxt {scalar_t__ dlm_state; scalar_t__ joining_node; int spinlock; int fs_locking_proto; int dlm_locking_proto; int domain_map; int recovery_map; TYPE_1__ reco; } ;


 scalar_t__ DLM_CTXT_LEAVING ;
 scalar_t__ DLM_CTXT_NEW ;
 scalar_t__ DLM_LOCK_RES_OWNER_UNKNOWN ;
 int DLM_RECO_STATE_ACTIVE ;
 void* JOIN_DISALLOW ;
 void* JOIN_OK ;
 void* JOIN_OK_NO_MAP ;
 void* JOIN_PROTOCOL_MISMATCH ;
 scalar_t__ O2NM_MAX_NODES ;
 struct dlm_ctxt* __dlm_lookup_domain_full (int ,int ) ;
 int __dlm_set_joining_node (struct dlm_ctxt*,int) ;
 int byte_test_bit (scalar_t__,int ) ;
 int dlm_domain_lock ;
 int dlm_query_join_packet_to_wire (struct dlm_query_join_packet*,int*) ;
 scalar_t__ dlm_query_join_proto_check (char*,int,int *,TYPE_2__*) ;
 int mlog (int ,char*,int,...) ;
 int o2hb_check_node_heartbeating (int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ test_bit (int,int ) ;

__attribute__((used)) static int dlm_query_join_handler(struct o2net_msg *msg, u32 len, void *data,
      void **ret_data)
{
 struct dlm_query_join_request *query;
 struct dlm_query_join_packet packet = {
  .code = JOIN_DISALLOW,
 };
 struct dlm_ctxt *dlm = ((void*)0);
 u32 response;
 u8 nodenum;

 query = (struct dlm_query_join_request *) msg->buf;

 mlog(0, "node %u wants to join domain %s\n", query->node_idx,
    query->domain);






 if (!o2hb_check_node_heartbeating(query->node_idx)) {
  mlog(0, "node %u is not in our live map yet\n",
       query->node_idx);

  packet.code = JOIN_DISALLOW;
  goto respond;
 }

 packet.code = JOIN_OK_NO_MAP;

 spin_lock(&dlm_domain_lock);
 dlm = __dlm_lookup_domain_full(query->domain, query->name_len);
 if (!dlm)
  goto unlock_respond;






 nodenum=0;
 while (nodenum < O2NM_MAX_NODES) {
  if (test_bit(nodenum, dlm->domain_map)) {
   if (!byte_test_bit(nodenum, query->node_map)) {
    mlog(0, "disallow join as node %u does not "
         "have node %u in its nodemap\n",
         query->node_idx, nodenum);
    packet.code = JOIN_DISALLOW;
    goto unlock_respond;
   }
  }
  nodenum++;
 }





 if (dlm && dlm->dlm_state != DLM_CTXT_LEAVING) {
  int bit = query->node_idx;
  spin_lock(&dlm->spinlock);

  if (dlm->dlm_state == DLM_CTXT_NEW &&
      dlm->joining_node == DLM_LOCK_RES_OWNER_UNKNOWN) {



   packet.code = JOIN_OK_NO_MAP;
  } else if (dlm->joining_node != DLM_LOCK_RES_OWNER_UNKNOWN) {

   packet.code = JOIN_DISALLOW;
  } else if (dlm->reco.state & DLM_RECO_STATE_ACTIVE) {
   mlog(0, "node %u trying to join, but recovery "
        "is ongoing.\n", bit);
   packet.code = JOIN_DISALLOW;
  } else if (test_bit(bit, dlm->recovery_map)) {
   mlog(0, "node %u trying to join, but it "
        "still needs recovery.\n", bit);
   packet.code = JOIN_DISALLOW;
  } else if (test_bit(bit, dlm->domain_map)) {
   mlog(0, "node %u trying to join, but it "
        "is still in the domain! needs recovery?\n",
        bit);
   packet.code = JOIN_DISALLOW;
  } else {






   if (dlm_query_join_proto_check("DLM", bit,
             &dlm->dlm_locking_proto,
             &query->dlm_proto)) {
    packet.code = JOIN_PROTOCOL_MISMATCH;
   } else if (dlm_query_join_proto_check("fs", bit,
             &dlm->fs_locking_proto,
             &query->fs_proto)) {
    packet.code = JOIN_PROTOCOL_MISMATCH;
   } else {
    packet.dlm_minor = query->dlm_proto.pv_minor;
    packet.fs_minor = query->fs_proto.pv_minor;
    packet.code = JOIN_OK;
    __dlm_set_joining_node(dlm, query->node_idx);
   }
  }

  spin_unlock(&dlm->spinlock);
 }
unlock_respond:
 spin_unlock(&dlm_domain_lock);

respond:
 mlog(0, "We respond with %u\n", packet.code);

 dlm_query_join_packet_to_wire(&packet, &response);
 return response;
}
