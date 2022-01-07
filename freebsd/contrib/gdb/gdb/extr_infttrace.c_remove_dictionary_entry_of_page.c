
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ page_start; TYPE_2__* previous; TYPE_1__* next; int original_permissions; } ;
typedef TYPE_3__ memory_page_t ;
struct TYPE_10__ {int page_count; } ;
struct TYPE_8__ {TYPE_1__* next; } ;
struct TYPE_7__ {TYPE_2__* previous; } ;
typedef scalar_t__ CORE_ADDR ;


 TYPE_6__ memory_page_dictionary ;
 int unwrite_protect_page (int,scalar_t__,int ) ;
 int xfree (TYPE_3__*) ;

__attribute__((used)) static void
remove_dictionary_entry_of_page (int pid, memory_page_t *page)
{

  unwrite_protect_page (pid, page->page_start, page->original_permissions);


  if (page->previous != ((void*)0))
    page->previous->next = page->next;
  if (page->next != ((void*)0))
    page->next->previous = page->previous;


  page->page_start = (CORE_ADDR) 0;

  memory_page_dictionary.page_count--;

  xfree (page);
}
