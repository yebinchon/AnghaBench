
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dlm_rsb {int dummy; } ;
struct dlm_ls {int dummy; } ;
struct dlm_lkb {int lkb_id; TYPE_1__* lkb_lksb; } ;
struct dlm_args {int dummy; } ;
struct TYPE_2__ {int sb_lkid; } ;


 int R_CREATE ;
 int _request_lock (struct dlm_rsb*,struct dlm_lkb*) ;
 int attach_lkb (struct dlm_rsb*,struct dlm_lkb*) ;
 int find_rsb (struct dlm_ls*,char*,int,int ,struct dlm_rsb**) ;
 int lock_rsb (struct dlm_rsb*) ;
 int put_rsb (struct dlm_rsb*) ;
 int unlock_rsb (struct dlm_rsb*) ;
 int validate_lock_args (struct dlm_ls*,struct dlm_lkb*,struct dlm_args*) ;

__attribute__((used)) static int request_lock(struct dlm_ls *ls, struct dlm_lkb *lkb, char *name,
   int len, struct dlm_args *args)
{
 struct dlm_rsb *r;
 int error;

 error = validate_lock_args(ls, lkb, args);
 if (error)
  goto out;

 error = find_rsb(ls, name, len, R_CREATE, &r);
 if (error)
  goto out;

 lock_rsb(r);

 attach_lkb(r, lkb);
 lkb->lkb_lksb->sb_lkid = lkb->lkb_id;

 error = _request_lock(r, lkb);

 unlock_rsb(r);
 put_rsb(r);

 out:
 return error;
}
