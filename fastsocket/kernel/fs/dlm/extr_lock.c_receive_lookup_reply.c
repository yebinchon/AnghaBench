
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dlm_rsb {int res_nodeid; scalar_t__ res_first_lkid; } ;
struct dlm_message {int m_nodeid; int m_lkid; } ;
struct dlm_ls {int dummy; } ;
struct dlm_lkb {int lkb_flags; int lkb_id; struct dlm_rsb* lkb_resource; } ;


 int DLM_MSG_LOOKUP_REPLY ;
 int _request_lock (struct dlm_rsb*,struct dlm_lkb*) ;
 int dlm_our_nodeid () ;
 int dlm_put_lkb (struct dlm_lkb*) ;
 int find_lkb (struct dlm_ls*,int ,struct dlm_lkb**) ;
 int hold_rsb (struct dlm_rsb*) ;
 scalar_t__ is_overlap (struct dlm_lkb*) ;
 int lock_rsb (struct dlm_rsb*) ;
 int log_debug (struct dlm_ls*,char*,int ,int ) ;
 int log_error (struct dlm_ls*,char*) ;
 int process_lookup_list (struct dlm_rsb*) ;
 int put_rsb (struct dlm_rsb*) ;
 int queue_cast_overlap (struct dlm_rsb*,struct dlm_lkb*) ;
 int remove_from_waiters (struct dlm_lkb*,int ) ;
 int unhold_lkb (struct dlm_lkb*) ;
 int unlock_rsb (struct dlm_rsb*) ;

__attribute__((used)) static void receive_lookup_reply(struct dlm_ls *ls, struct dlm_message *ms)
{
 struct dlm_lkb *lkb;
 struct dlm_rsb *r;
 int error, ret_nodeid;

 error = find_lkb(ls, ms->m_lkid, &lkb);
 if (error) {
  log_error(ls, "receive_lookup_reply no lkb");
  return;
 }




 r = lkb->lkb_resource;
 hold_rsb(r);
 lock_rsb(r);

 error = remove_from_waiters(lkb, DLM_MSG_LOOKUP_REPLY);
 if (error)
  goto out;

 ret_nodeid = ms->m_nodeid;
 if (ret_nodeid == dlm_our_nodeid()) {
  r->res_nodeid = 0;
  ret_nodeid = 0;
  r->res_first_lkid = 0;
 } else {

  r->res_nodeid = ret_nodeid;
 }

 if (is_overlap(lkb)) {
  log_debug(ls, "receive_lookup_reply %x unlock %x",
     lkb->lkb_id, lkb->lkb_flags);
  queue_cast_overlap(r, lkb);
  unhold_lkb(lkb);
  goto out_list;
 }

 _request_lock(r, lkb);

 out_list:
 if (!ret_nodeid)
  process_lookup_list(r);
 out:
 unlock_rsb(r);
 put_rsb(r);
 dlm_put_lkb(lkb);
}
