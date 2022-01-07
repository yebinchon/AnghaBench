
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _ (char*) ;
 int as_warn (int ) ;
 scalar_t__ cur_proc_ptr ;

__attribute__((used)) static void
md_obj_end (void)
{

  if (cur_proc_ptr)
    as_warn (_("missing .end at end of assembly"));
}
