
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ in_use; struct TYPE_7__* next; TYPE_3__* allocation; scalar_t__ alloc_size; } ;
typedef TYPE_2__ page_group ;
struct TYPE_8__ {char* page; size_t bytes; struct TYPE_8__* next; TYPE_1__* group; } ;
typedef TYPE_3__ page_entry ;
struct TYPE_9__ {size_t bytes_mapped; TYPE_2__* page_groups; TYPE_3__* free_pages; } ;
struct TYPE_6__ {scalar_t__ in_use; } ;


 TYPE_5__ G ;
 int free (TYPE_3__*) ;
 int munmap (char*,size_t) ;

__attribute__((used)) static void
release_pages (void)
{
}
