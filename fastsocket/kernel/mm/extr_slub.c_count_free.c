
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int objects; int inuse; } ;



__attribute__((used)) static int count_free(struct page *page)
{
 return page->objects - page->inuse;
}
