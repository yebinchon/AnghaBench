
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dlm_rsb {int dummy; } ;
struct dlm_lkb {int dummy; } ;


 int do_convert (struct dlm_rsb*,struct dlm_lkb*) ;
 int do_convert_effects (struct dlm_rsb*,struct dlm_lkb*,int) ;
 scalar_t__ is_remote (struct dlm_rsb*) ;
 int send_convert (struct dlm_rsb*,struct dlm_lkb*) ;

__attribute__((used)) static int _convert_lock(struct dlm_rsb *r, struct dlm_lkb *lkb)
{
 int error;

 if (is_remote(r)) {

  error = send_convert(r, lkb);
 } else {
  error = do_convert(r, lkb);


  do_convert_effects(r, lkb, error);
 }

 return error;
}
