
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int dwarf2_tmp_obstack ;
 int obstack_free (int *,int *) ;

__attribute__((used)) static void
dwarf2_free_tmp_obstack (void *ignore)
{
  obstack_free (&dwarf2_tmp_obstack, ((void*)0));
}
