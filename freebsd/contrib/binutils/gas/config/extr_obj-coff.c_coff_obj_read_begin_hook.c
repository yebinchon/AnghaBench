
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SYMENT ;
typedef int AUXENT ;


 scalar_t__ AUXESZ ;
 scalar_t__ SYMESZ ;
 int know (int) ;
 int tag_init () ;

void
coff_obj_read_begin_hook (void)
{

  know (sizeof (SYMENT) == sizeof (AUXENT));
  know (SYMESZ == AUXESZ);
  tag_init ();
}
