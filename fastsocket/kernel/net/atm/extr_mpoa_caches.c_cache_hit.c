
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ mpc_p1; } ;
struct mpoa_client {int mps_ctrl_addr; TYPE_2__* dev; TYPE_1__ parameters; } ;
struct TYPE_10__ {int in_dst_ip; } ;
struct TYPE_9__ {TYPE_4__ in_info; } ;
struct k_message {int qos; TYPE_3__ content; int MPS_ctrl; void* type; } ;
struct atm_mpoa_qos {int qos; } ;
struct TYPE_11__ {scalar_t__ count; scalar_t__ entry_state; int reply_wait; TYPE_4__ ctrl_info; int * shortcut; } ;
typedef TYPE_5__ in_cache_entry ;
struct TYPE_8__ {int name; } ;


 int ATM_ESA_LEN ;
 int CLOSED ;
 scalar_t__ INGRESS_INVALID ;
 scalar_t__ INGRESS_REFRESHING ;
 scalar_t__ INGRESS_RESOLVED ;
 scalar_t__ INGRESS_RESOLVING ;
 int OPEN ;
 void* SND_MPOA_RES_RQST ;
 struct atm_mpoa_qos* atm_mpoa_search_qos (int ) ;
 int do_gettimeofday (int *) ;
 int dprintk (char*,int ,int *) ;
 int memcpy (int ,int ,int ) ;
 int msg_to_mpoad (struct k_message*,struct mpoa_client*) ;

__attribute__((used)) static int cache_hit(in_cache_entry *entry, struct mpoa_client *mpc)
{
 struct atm_mpoa_qos *qos;
 struct k_message msg;

 entry->count++;
 if(entry->entry_state == INGRESS_RESOLVED && entry->shortcut != ((void*)0))
  return OPEN;

 if(entry->entry_state == INGRESS_REFRESHING){
  if(entry->count > mpc->parameters.mpc_p1){
   msg.type = SND_MPOA_RES_RQST;
   msg.content.in_info = entry->ctrl_info;
   memcpy(msg.MPS_ctrl, mpc->mps_ctrl_addr, ATM_ESA_LEN);
   qos = atm_mpoa_search_qos(entry->ctrl_info.in_dst_ip);
   if (qos != ((void*)0)) msg.qos = qos->qos;
   msg_to_mpoad(&msg, mpc);
   do_gettimeofday(&(entry->reply_wait));
   entry->entry_state = INGRESS_RESOLVING;
  }
  if(entry->shortcut != ((void*)0))
   return OPEN;
  return CLOSED;
 }

 if(entry->entry_state == INGRESS_RESOLVING && entry->shortcut != ((void*)0))
  return OPEN;

 if( entry->count > mpc->parameters.mpc_p1 &&
     entry->entry_state == INGRESS_INVALID){
  dprintk("mpoa: (%s) mpoa_caches.c: threshold exceeded for ip %pI4, sending MPOA res req\n",
   mpc->dev->name, &entry->ctrl_info.in_dst_ip);
  entry->entry_state = INGRESS_RESOLVING;
  msg.type = SND_MPOA_RES_RQST;
  memcpy(msg.MPS_ctrl, mpc->mps_ctrl_addr, ATM_ESA_LEN );
  msg.content.in_info = entry->ctrl_info;
  qos = atm_mpoa_search_qos(entry->ctrl_info.in_dst_ip);
  if (qos != ((void*)0)) msg.qos = qos->qos;
  msg_to_mpoad( &msg, mpc);
  do_gettimeofday(&(entry->reply_wait));
 }

 return CLOSED;
}
