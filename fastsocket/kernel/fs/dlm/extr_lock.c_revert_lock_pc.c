
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dlm_rsb {int dummy; } ;
struct dlm_lkb {int dummy; } ;


 int revert_lock (struct dlm_rsb*,struct dlm_lkb*) ;

__attribute__((used)) static int revert_lock_pc(struct dlm_rsb *r, struct dlm_lkb *lkb)
{
 return revert_lock(r, lkb);
}
