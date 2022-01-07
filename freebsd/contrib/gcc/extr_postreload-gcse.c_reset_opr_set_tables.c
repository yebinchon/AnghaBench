
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FIRST_PSEUDO_REGISTER ;
 int memset (int ,int ,int) ;
 int * modifies_mem_list ;
 int modifies_mem_obstack ;
 int modifies_mem_obstack_bottom ;
 int obstack_free (int *,int ) ;
 int reg_avail_info ;

__attribute__((used)) static void
reset_opr_set_tables (void)
{
  memset (reg_avail_info, 0, FIRST_PSEUDO_REGISTER * sizeof (int));
  obstack_free (&modifies_mem_obstack, modifies_mem_obstack_bottom);
  modifies_mem_list = ((void*)0);
}
