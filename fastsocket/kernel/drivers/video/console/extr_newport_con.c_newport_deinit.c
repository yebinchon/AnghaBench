
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vc_data {int dummy; } ;


 int con_is_bound (int *) ;
 int newport_con ;
 int newport_exit () ;
 scalar_t__ newport_has_init ;

__attribute__((used)) static void newport_deinit(struct vc_data *c)
{
 if (!con_is_bound(&newport_con) && newport_has_init) {
  newport_exit();
  newport_has_init = 0;
 }
}
