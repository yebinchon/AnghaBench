
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mips16_mark_labels () ;
 int s_stab (int) ;

__attribute__((used)) static void
s_mips_stab (int type)
{
  if (type == 'n')
    mips16_mark_labels ();

  s_stab (type);
}
