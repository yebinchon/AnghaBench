
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xt_tgdtor_param {int dummy; } ;



 int mode ;
 int selinux_secmark_refcount_dec () ;

__attribute__((used)) static void secmark_tg_destroy(const struct xt_tgdtor_param *par)
{
 switch (mode) {
 case 128:
  selinux_secmark_refcount_dec();
 }
}
