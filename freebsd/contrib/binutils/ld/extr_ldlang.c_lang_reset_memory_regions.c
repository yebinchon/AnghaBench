
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {void* processed_lma; void* processed_vma; struct TYPE_9__* next; } ;
typedef TYPE_2__ lang_output_section_statement_type ;
struct TYPE_10__ {int * last_os; int origin; int current; struct TYPE_10__* next; } ;
typedef TYPE_3__ lang_memory_region_type ;
struct TYPE_11__ {scalar_t__ size; scalar_t__ rawsize; struct TYPE_11__* next; } ;
typedef TYPE_4__ asection ;
struct TYPE_13__ {TYPE_1__* head; } ;
struct TYPE_12__ {TYPE_4__* sections; } ;
struct TYPE_8__ {TYPE_2__ output_section_statement; } ;


 void* FALSE ;
 TYPE_3__* lang_memory_region_list ;
 TYPE_6__ lang_output_section_statement ;
 TYPE_5__* output_bfd ;

void
lang_reset_memory_regions (void)
{
  lang_memory_region_type *p = lang_memory_region_list;
  asection *o;
  lang_output_section_statement_type *os;

  for (p = lang_memory_region_list; p != ((void*)0); p = p->next)
    {
      p->current = p->origin;
      p->last_os = ((void*)0);
    }

  for (os = &lang_output_section_statement.head->output_section_statement;
       os != ((void*)0);
       os = os->next)
    {
      os->processed_vma = FALSE;
      os->processed_lma = FALSE;
    }

  for (o = output_bfd->sections; o != ((void*)0); o = o->next)
    {

      o->rawsize = o->size;
      o->size = 0;
    }
}
