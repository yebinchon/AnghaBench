
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int generic_mourn_inferior () ;
 int targ_ops ;
 int unpush_target (int ) ;

__attribute__((used)) static void
monitor_mourn_inferior (void)
{
  unpush_target (targ_ops);
  generic_mourn_inferior ();
}
