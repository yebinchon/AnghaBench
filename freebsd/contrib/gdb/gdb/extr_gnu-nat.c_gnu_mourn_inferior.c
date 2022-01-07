
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int current_inferior ;
 int generic_mourn_inferior () ;
 int gnu_ops ;
 int inf_debug (int ,char*) ;
 int inf_detach (int ) ;
 int unpush_target (int *) ;

__attribute__((used)) static void
gnu_mourn_inferior (void)
{
  inf_debug (current_inferior, "rip");
  inf_detach (current_inferior);
  unpush_target (&gnu_ops);
  generic_mourn_inferior ();
}
