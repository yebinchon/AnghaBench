
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcpu_chunk {int dummy; } ;
struct page {scalar_t__ index; } ;



__attribute__((used)) static struct pcpu_chunk *pcpu_get_page_chunk(struct page *page)
{
 return (struct pcpu_chunk *)page->index;
}
