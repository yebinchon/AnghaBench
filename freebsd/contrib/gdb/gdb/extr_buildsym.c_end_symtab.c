
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct symtab {int block_line_section; char* dirname; int primary; int debugformat; int language; int * free_func; int free_code; struct linetable* linetable; int * macro_table; struct blockvector* blockvector; } ;
struct subfile {struct subfile* next; int * debugformat; struct linetable* line_vector; int * dirname; int * name; int language; } ;
struct pending_block {struct pending_block* next; struct block* block; } ;
struct objfile {int flags; int objfile_obstack; } ;
struct linetable_entry {int dummy; } ;
struct linetable {int nitems; int item; } ;
struct context_stack {int start_addr; int old_blocks; int name; } ;
struct blockvector {int dummy; } ;
struct block {int dummy; } ;
typedef int CORE_ADDR ;


 int BLOCKVECTOR_BLOCK (struct blockvector*,int ) ;
 scalar_t__ BLOCK_START (struct block*) ;
 int OBJF_REORDERED ;
 int PROCESS_LINENUMBER_HOOK () ;
 int STATIC_BLOCK ;
 struct symtab* allocate_symtab (int *,struct objfile*) ;
 int cleanup_undefined_types () ;
 int compare_line_numbers ;
 int complaint (int *,char*) ;
 scalar_t__ context_stack_depth ;
 int cp_finalize_namespace (int ,int *) ;
 int * current_subfile ;
 int * file_symbols ;
 int finish_block (int ,int **,int ,int ,int ,struct objfile*) ;
 int finish_global_stabs (struct objfile*) ;
 int free_linetable ;
 int * global_symbols ;
 scalar_t__ have_line_numbers ;
 int * last_source_file ;
 int last_source_start_addr ;
 int * local_symbols ;
 struct blockvector* make_blockvector (struct objfile*) ;
 int memcpy (struct linetable*,struct linetable*,int) ;
 int obsavestring (int *,int,int *) ;
 scalar_t__ obstack_alloc (int *,int) ;
 struct pending_block* pending_blocks ;
 int * pending_macros ;
 struct context_stack* pop_context () ;
 int qsort (int ,int,int,int ) ;
 int strcpy (char*,int *) ;
 int strlen (int *) ;
 struct subfile* subfiles ;
 int symfile_complaints ;
 int xfree (void*) ;
 scalar_t__ xrealloc (char*,int) ;

struct symtab *
end_symtab (CORE_ADDR end_addr, struct objfile *objfile, int section)
{
  struct symtab *symtab = ((void*)0);
  struct blockvector *blockvector;
  struct subfile *subfile;
  struct context_stack *cstk;
  struct subfile *nextsub;




  if (context_stack_depth > 0)
    {
      cstk = pop_context ();

      finish_block (cstk->name, &local_symbols, cstk->old_blocks,
      cstk->start_addr, end_addr, objfile);

      if (context_stack_depth > 0)
 {





   complaint (&symfile_complaints,
              "Context stack not empty in end_symtab");
   context_stack_depth = 0;
 }
    }



  if ((objfile->flags & OBJF_REORDERED) && pending_blocks)
    {

      int swapped;
      do
 {
   struct pending_block *pb, *pbnext;

   pb = pending_blocks;
   pbnext = pb->next;
   swapped = 0;

   while (pbnext)
     {


       if (BLOCK_START (pb->block) < BLOCK_START (pbnext->block))
  {
    struct block *tmp = pb->block;
    pb->block = pbnext->block;
    pbnext->block = tmp;
    swapped = 1;
  }
       pb = pbnext;
       pbnext = pbnext->next;
     }
 }
      while (swapped);
    }
  cleanup_undefined_types ();
  finish_global_stabs (objfile);

  if (pending_blocks == ((void*)0)
      && file_symbols == ((void*)0)
      && global_symbols == ((void*)0)
      && have_line_numbers == 0
      && pending_macros == ((void*)0))
    {


      blockvector = ((void*)0);
    }
  else
    {


      finish_block (0, &file_symbols, 0, last_source_start_addr, end_addr,
      objfile);
      finish_block (0, &global_symbols, 0, last_source_start_addr, end_addr,
      objfile);
      blockvector = make_blockvector (objfile);
      cp_finalize_namespace (BLOCKVECTOR_BLOCK (blockvector, STATIC_BLOCK),
        &objfile->objfile_obstack);
    }




                            ;




  for (subfile = subfiles; subfile; subfile = nextsub)
    {
      int linetablesize = 0;
      symtab = ((void*)0);



      if (blockvector)
 {
   if (subfile->line_vector)
     {
       linetablesize = sizeof (struct linetable) +
         subfile->line_vector->nitems * sizeof (struct linetable_entry);
       if (objfile->flags & OBJF_REORDERED)
  qsort (subfile->line_vector->item,
         subfile->line_vector->nitems,
       sizeof (struct linetable_entry), compare_line_numbers);
     }


   symtab = allocate_symtab (subfile->name, objfile);


   symtab->blockvector = blockvector;
          symtab->macro_table = pending_macros;
   if (subfile->line_vector)
     {

       symtab->linetable = (struct linetable *)
  obstack_alloc (&objfile->objfile_obstack, linetablesize);
       memcpy (symtab->linetable, subfile->line_vector, linetablesize);
     }
   else
     {
       symtab->linetable = ((void*)0);
     }
   symtab->block_line_section = section;
   if (subfile->dirname)
     {

       symtab->dirname = (char *)
  obstack_alloc (&objfile->objfile_obstack,
          strlen (subfile->dirname) + 1);
       strcpy (symtab->dirname, subfile->dirname);
     }
   else
     {
       symtab->dirname = ((void*)0);
     }
   symtab->free_code = free_linetable;
   symtab->free_func = ((void*)0);







   symtab->language = subfile->language;


   if (subfile->debugformat != ((void*)0))
     {
       symtab->debugformat = obsavestring (subfile->debugformat,
           strlen (subfile->debugformat),
        &objfile->objfile_obstack);
     }





   symtab->primary = 0;
 }
      if (subfile->name != ((void*)0))
 {
   xfree ((void *) subfile->name);
 }
      if (subfile->dirname != ((void*)0))
 {
   xfree ((void *) subfile->dirname);
 }
      if (subfile->line_vector != ((void*)0))
 {
   xfree ((void *) subfile->line_vector);
 }
      if (subfile->debugformat != ((void*)0))
 {
   xfree ((void *) subfile->debugformat);
 }

      nextsub = subfile->next;
      xfree ((void *) subfile);
    }


  if (symtab)
    {
      symtab->primary = 1;
    }

  last_source_file = ((void*)0);
  current_subfile = ((void*)0);
  pending_macros = ((void*)0);

  return symtab;
}
