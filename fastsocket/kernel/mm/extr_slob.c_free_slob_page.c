
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * mapping; } ;
struct slob_page {TYPE_1__ page; } ;


 int reset_page_mapcount (TYPE_1__*) ;

__attribute__((used)) static inline void free_slob_page(struct slob_page *sp)
{
 reset_page_mapcount(&sp->page);
 sp->page.mapping = ((void*)0);
}
