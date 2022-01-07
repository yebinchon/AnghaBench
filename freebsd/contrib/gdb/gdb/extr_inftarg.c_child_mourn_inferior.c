
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int child_ops ;
 int generic_mourn_inferior () ;
 int unpush_target (int *) ;

__attribute__((used)) static void
child_mourn_inferior (void)
{
  unpush_target (&child_ops);
  generic_mourn_inferior ();
}
