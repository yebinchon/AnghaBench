
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pagevec {int pages; int nr; } ;
struct address_space {int dummy; } ;
typedef int pgoff_t ;


 int find_get_pages_tag (struct address_space*,int *,int,unsigned int,int ) ;
 int pagevec_count (struct pagevec*) ;

unsigned pagevec_lookup_tag(struct pagevec *pvec, struct address_space *mapping,
  pgoff_t *index, int tag, unsigned nr_pages)
{
 pvec->nr = find_get_pages_tag(mapping, index, tag,
     nr_pages, pvec->pages);
 return pagevec_count(pvec);
}
