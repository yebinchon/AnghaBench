
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct overlay_list {struct overlay_list* next; int os; } ;
typedef int etree_type ;


 int ADDR ;
 int MAX_K ;
 int SIZEOF ;
 int current_section ;
 int * exp_binop (int ,int *,int *) ;
 void* exp_nameop (int ,char const*) ;
 int lang_enter_output_section_statement (char const*,void*,int ,int ,int ,int ,int ) ;
 struct overlay_list* overlay_list ;
 int * overlay_max ;
 int overlay_section ;
 int overlay_subalign ;
 void* overlay_vma ;
 struct overlay_list* xmalloc (int) ;

void
lang_enter_overlay_section (const char *name)
{
  struct overlay_list *n;
  etree_type *size;

  lang_enter_output_section_statement (name, overlay_vma, overlay_section,
           0, overlay_subalign, 0, 0);




  if (overlay_list == ((void*)0))
    overlay_vma = exp_nameop (ADDR, name);


  n = xmalloc (sizeof *n);
  n->os = current_section;
  n->next = overlay_list;
  overlay_list = n;

  size = exp_nameop (SIZEOF, name);


  if (overlay_max == ((void*)0))
    overlay_max = size;
  else
    overlay_max = exp_binop (MAX_K, overlay_max, size);
}
