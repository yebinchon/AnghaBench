
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dlm_ls {int dummy; } ;
struct dlm_lkb {scalar_t__ lkb_nodeid; int lkb_resource; } ;


 scalar_t__ dlm_dir_nodeid (int ) ;
 scalar_t__ dlm_is_removed (struct dlm_ls*,scalar_t__) ;
 int dlm_no_directory (struct dlm_ls*) ;

__attribute__((used)) static int waiter_needs_recovery(struct dlm_ls *ls, struct dlm_lkb *lkb)
{
 if (dlm_is_removed(ls, lkb->lkb_nodeid))
  return 1;

 if (!dlm_no_directory(ls))
  return 0;

 if (dlm_dir_nodeid(lkb->lkb_resource) != lkb->lkb_nodeid)
  return 1;

 return 0;
}
