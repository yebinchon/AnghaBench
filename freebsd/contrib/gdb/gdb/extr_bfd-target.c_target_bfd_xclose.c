
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct target_ops {struct target_ops* to_sections; int to_data; } ;


 int bfd_close (int ) ;
 int xfree (struct target_ops*) ;

void
target_bfd_xclose (struct target_ops *t, int quitting)
{
  bfd_close (t->to_data);
  xfree (t->to_sections);
  xfree (t);
}
