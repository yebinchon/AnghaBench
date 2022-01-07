
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dlm_rsb {int dummy; } ;
struct dlm_message {int m_remid; } ;
struct dlm_lkb {struct dlm_rsb* lkb_resource; } ;
struct dlm_ls {struct dlm_lkb ls_stub_lkb; struct dlm_rsb ls_stub_rsb; } ;


 int dlm_put_lkb (struct dlm_lkb*) ;
 int do_convert (struct dlm_rsb*,struct dlm_lkb*) ;
 int do_convert_effects (struct dlm_rsb*,struct dlm_lkb*,int) ;
 int down_conversion (struct dlm_lkb*) ;
 int find_lkb (struct dlm_ls*,int ,struct dlm_lkb**) ;
 int hold_rsb (struct dlm_rsb*) ;
 int lock_rsb (struct dlm_rsb*) ;
 int put_rsb (struct dlm_rsb*) ;
 int receive_convert_args (struct dlm_ls*,struct dlm_lkb*,struct dlm_message*) ;
 int receive_flags (struct dlm_lkb*,struct dlm_message*) ;
 int send_convert_reply (struct dlm_rsb*,struct dlm_lkb*,int) ;
 int setup_stub_lkb (struct dlm_ls*,struct dlm_message*) ;
 int unlock_rsb (struct dlm_rsb*) ;
 int validate_message (struct dlm_lkb*,struct dlm_message*) ;

__attribute__((used)) static void receive_convert(struct dlm_ls *ls, struct dlm_message *ms)
{
 struct dlm_lkb *lkb;
 struct dlm_rsb *r;
 int error, reply = 1;

 error = find_lkb(ls, ms->m_remid, &lkb);
 if (error)
  goto fail;

 r = lkb->lkb_resource;

 hold_rsb(r);
 lock_rsb(r);

 error = validate_message(lkb, ms);
 if (error)
  goto out;

 receive_flags(lkb, ms);

 error = receive_convert_args(ls, lkb, ms);
 if (error) {
  send_convert_reply(r, lkb, error);
  goto out;
 }

 reply = !down_conversion(lkb);

 error = do_convert(r, lkb);
 if (reply)
  send_convert_reply(r, lkb, error);
 do_convert_effects(r, lkb, error);
 out:
 unlock_rsb(r);
 put_rsb(r);
 dlm_put_lkb(lkb);
 return;

 fail:
 setup_stub_lkb(ls, ms);
 send_convert_reply(&ls->ls_stub_rsb, &ls->ls_stub_lkb, error);
}
