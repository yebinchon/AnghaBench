
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page_collect {int dummy; } ;
struct list_head {int dummy; } ;
struct file {int dummy; } ;
struct address_space {int host; } ;


 int EXOFS_ERR (char*,int) ;
 int _pcol_init (struct page_collect*,unsigned int,int ) ;
 int read_cache_pages (struct address_space*,struct list_head*,int ,struct page_collect*) ;
 int read_exec (struct page_collect*,int) ;
 int readpage_strip ;

__attribute__((used)) static int exofs_readpages(struct file *file, struct address_space *mapping,
      struct list_head *pages, unsigned nr_pages)
{
 struct page_collect pcol;
 int ret;

 _pcol_init(&pcol, nr_pages, mapping->host);

 ret = read_cache_pages(mapping, pages, readpage_strip, &pcol);
 if (ret) {
  EXOFS_ERR("read_cache_pages => %d\n", ret);
  return ret;
 }

 return read_exec(&pcol, 0);
}
