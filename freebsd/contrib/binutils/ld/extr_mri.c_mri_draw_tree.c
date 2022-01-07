
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void* sorted; int * exclude_name_list; int name; } ;
struct wildcard_list {TYPE_1__ spec; int * next; } ;
struct section_name_struct {scalar_t__ vma; int ok_to_load; struct section_name_struct* next; int name; int alias; int * subalign; int * align; } ;
typedef int etree_type ;


 int FALSE ;
 int NAME ;
 struct section_name_struct* address ;
 struct section_name_struct* alias ;
 struct section_name_struct* alignment ;
 scalar_t__ base ;
 int done_tree ;
 scalar_t__ exp_nameop (int ,char*) ;
 int lang_add_wild (int *,struct wildcard_list*,int ) ;
 int lang_enter_output_section_statement (int ,scalar_t__,int ,int *,int *,int *,int ) ;
 int lang_leave_output_section_statement (int ,char*,int *,int *) ;
 int mri_add_to_list (struct section_name_struct**,int ,scalar_t__,int ,int ,int ) ;
 int noload_section ;
 void* none ;
 struct section_name_struct* only_load ;
 struct section_name_struct* order ;
 scalar_t__ strcmp (int ,int ) ;
 struct section_name_struct* subalignment ;
 struct wildcard_list* xmalloc (int) ;

void
mri_draw_tree (void)
{
  if (done_tree)
    return;





  if (address != ((void*)0))
    {
      struct section_name_struct *alist;
      struct section_name_struct *olist;

      if (order == ((void*)0))
 order = address;

      for (alist = address;
    alist != ((void*)0);
    alist = alist->next)
 {
   int done = 0;

   for (olist = order; done == 0 && olist != ((void*)0); olist = olist->next)
     {
       if (strcmp (alist->name, olist->name) == 0)
  {
    olist->vma = alist->vma;
    done = 1;
  }
     }

   if (!done)
     {

       mri_add_to_list (&order, alist->name, alist->vma, 0, 0, 0);
     }
 }
    }



  if (only_load != ((void*)0))
    {
      struct section_name_struct *ptr1;
      struct section_name_struct *ptr2;

      if (order == ((void*)0))
 order = only_load;


      for (ptr1 = only_load; ptr1; ptr1 = ptr1->next)
 for (ptr2 = order; ptr2; ptr2 = ptr2->next)
   if (strcmp (ptr2->name, ptr1->name) == 0)
     ptr2->ok_to_load = 1;
    }
  else
    {

      struct section_name_struct *ptr;

      for (ptr = order; ptr; ptr = ptr->next)
 ptr->ok_to_load = 1;
    }


  if (order != ((void*)0))
    {

      struct section_name_struct *p = order;

      while (p)
 {
   struct section_name_struct *aptr;
   etree_type *align = 0;
   etree_type *subalign = 0;
   struct wildcard_list *tmp;


   for (aptr = alignment; aptr; aptr = aptr->next)
     if (strcmp (aptr->name, p->name) == 0)
       align = aptr->align;

   for (aptr = subalignment; aptr; aptr = aptr->next)
     if (strcmp (aptr->name, p->name) == 0)
       subalign = aptr->subalign;

   if (base == 0)
     base = p->vma ? p->vma : exp_nameop (NAME, ".");

   lang_enter_output_section_statement (p->name, base,
            p->ok_to_load ? 0 : noload_section,
            align, subalign, ((void*)0), 0);
   base = 0;
   tmp = xmalloc (sizeof *tmp);
   tmp->next = ((void*)0);
   tmp->spec.name = p->name;
   tmp->spec.exclude_name_list = ((void*)0);
   tmp->spec.sorted = none;
   lang_add_wild (((void*)0), tmp, FALSE);


   for (aptr = alias; aptr; aptr = aptr->next)
     if (strcmp (aptr->alias, p->name) == 0)
       {
  tmp = xmalloc (sizeof *tmp);
  tmp->next = ((void*)0);
  tmp->spec.name = aptr->name;
  tmp->spec.exclude_name_list = ((void*)0);
  tmp->spec.sorted = none;
  lang_add_wild (((void*)0), tmp, FALSE);
       }

   lang_leave_output_section_statement (0, "*default*", ((void*)0), ((void*)0));

   p = p->next;
 }
    }

  done_tree = 1;
}
