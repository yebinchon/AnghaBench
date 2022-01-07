
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int current_ops ;
 int generic_mourn_inferior () ;
 int unpush_target (int ) ;

void
ocd_mourn (void)
{
  unpush_target (current_ops);
  generic_mourn_inferior ();
}
