
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct overlay_list {struct overlay_list* next; TYPE_1__* os; } ;
typedef int lang_output_section_phdr_list ;
struct TYPE_6__ {struct TYPE_6__* next; int name; } ;
typedef TYPE_2__ lang_nocrossref_type ;
typedef int lang_memory_region_type ;
typedef int fill_type ;
typedef int etree_type ;
struct TYPE_5__ {int name; int * phdrs; int sectype; int * load_base; int * lma_region; int * region; int * fill; int update_dot_tree; } ;


 int FALSE ;
 int exp_assop (char,char*,int ) ;
 int exp_binop (char,int *,int *) ;
 int free (struct overlay_list*) ;
 int lang_add_nocrossref (TYPE_2__*) ;
 int lang_get_regions (int **,int **,char const*,char const*,int ,int ) ;
 int normal_section ;
 struct overlay_list* overlay_list ;
 int * overlay_max ;
 int * overlay_vma ;
 TYPE_2__* xmalloc (int) ;

void
lang_leave_overlay (etree_type *lma_expr,
      int nocrossrefs,
      fill_type *fill,
      const char *memspec,
      lang_output_section_phdr_list *phdrs,
      const char *lma_memspec)
{
  lang_memory_region_type *region;
  lang_memory_region_type *lma_region;
  struct overlay_list *l;
  lang_nocrossref_type *nocrossref;

  lang_get_regions (&region, &lma_region,
      memspec, lma_memspec,
      lma_expr != ((void*)0), FALSE);

  nocrossref = ((void*)0);



  if (overlay_list != ((void*)0))
    overlay_list->os->update_dot_tree
      = exp_assop ('=', ".", exp_binop ('+', overlay_vma, overlay_max));

  l = overlay_list;
  while (l != ((void*)0))
    {
      struct overlay_list *next;

      if (fill != ((void*)0) && l->os->fill == ((void*)0))
 l->os->fill = fill;

      l->os->region = region;
      l->os->lma_region = lma_region;





      if (l->next == 0)
 {
   l->os->load_base = lma_expr;
   l->os->sectype = normal_section;
 }
      if (phdrs != ((void*)0) && l->os->phdrs == ((void*)0))
 l->os->phdrs = phdrs;

      if (nocrossrefs)
 {
   lang_nocrossref_type *nc;

   nc = xmalloc (sizeof *nc);
   nc->name = l->os->name;
   nc->next = nocrossref;
   nocrossref = nc;
 }

      next = l->next;
      free (l);
      l = next;
    }

  if (nocrossref != ((void*)0))
    lang_add_nocrossref (nocrossref);

  overlay_vma = ((void*)0);
  overlay_list = ((void*)0);
  overlay_max = ((void*)0);
}
