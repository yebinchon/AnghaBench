
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct score_got_info {unsigned long assigned_gotno; int * global_gotsym; scalar_t__ next; } ;
struct score_elf_link_hash_table {int dummy; } ;
struct score_elf_hash_sort_data {unsigned long max_unref_got_dynindx; unsigned long min_got_dynindx; unsigned long max_non_got_dynindx; int * low; } ;
struct bfd_link_info {int dummy; } ;
typedef int bfd_boolean ;
typedef int bfd ;
struct TYPE_2__ {unsigned long dynsymcount; int * dynobj; } ;


 int BFD_ASSERT (int) ;
 int TRUE ;
 TYPE_1__* elf_hash_table (struct bfd_link_info*) ;
 struct score_got_info* score_elf_got_info (int *,int *) ;
 int score_elf_link_hash_traverse (struct score_elf_link_hash_table*,int ,struct score_elf_hash_sort_data*) ;
 int score_elf_sort_hash_table_f ;

__attribute__((used)) static bfd_boolean
score_elf_sort_hash_table (struct bfd_link_info *info,
      unsigned long max_local)
{
  struct score_elf_hash_sort_data hsd;
  struct score_got_info *g;
  bfd *dynobj;

  dynobj = elf_hash_table (info)->dynobj;

  g = score_elf_got_info (dynobj, ((void*)0));

  hsd.low = ((void*)0);
  hsd.max_unref_got_dynindx =
    hsd.min_got_dynindx = elf_hash_table (info)->dynsymcount







    - (g->next ? g->assigned_gotno : 0);
  hsd.max_non_got_dynindx = max_local;
  score_elf_link_hash_traverse (((struct score_elf_link_hash_table *)
     elf_hash_table (info)),
            score_elf_sort_hash_table_f,
            &hsd);



  BFD_ASSERT (hsd.max_non_got_dynindx <= hsd.min_got_dynindx);
  BFD_ASSERT ((unsigned long)hsd.max_unref_got_dynindx
       <= elf_hash_table (info)->dynsymcount);



  g->global_gotsym = hsd.low;

  return TRUE;
}
