
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _ (char*) ;
 int as_warn (int ,char,char*) ;
 int demand_empty_rest_of_line () ;

__attribute__((used)) static void
s_bad_end (int endr)
{
  as_warn (_(".end%c encountered without preceeding %s"),
    endr ? 'r' : 'm',
    endr ? ".rept, .irp, or .irpc" : ".macro");
  demand_empty_rest_of_line ();
}
