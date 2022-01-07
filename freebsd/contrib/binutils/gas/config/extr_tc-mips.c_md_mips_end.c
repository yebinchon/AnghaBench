
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ECOFF_DEBUGGING ;
 int md_obj_end () ;

void
md_mips_end (void)
{
  if (! ECOFF_DEBUGGING)
    md_obj_end ();
}
