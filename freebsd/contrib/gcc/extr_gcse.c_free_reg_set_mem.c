
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free (int ) ;
 int obstack_free (int *,int *) ;
 int reg_set_obstack ;
 int reg_set_table ;

__attribute__((used)) static void
free_reg_set_mem (void)
{
  free (reg_set_table);
  obstack_free (&reg_set_obstack, ((void*)0));
}
