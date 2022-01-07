
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int expr_obstack ;
 int expr_table ;
 int free (int ) ;
 int htab_delete (int ) ;
 int modifies_mem_obstack ;
 int obstack_free (int *,int *) ;
 int occr_obstack ;
 int reg_avail_info ;
 int uid_cuid ;
 int unoccr_obstack ;

__attribute__((used)) static void
free_mem (void)
{
  free (uid_cuid);

  htab_delete (expr_table);

  obstack_free (&expr_obstack, ((void*)0));
  obstack_free (&occr_obstack, ((void*)0));
  obstack_free (&unoccr_obstack, ((void*)0));
  obstack_free (&modifies_mem_obstack, ((void*)0));

  free (reg_avail_info);
}
