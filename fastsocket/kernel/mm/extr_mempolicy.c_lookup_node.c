
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct mm_struct {int dummy; } ;


 unsigned long PAGE_MASK ;
 int current ;
 int get_user_pages (int ,struct mm_struct*,unsigned long,int,int ,int ,struct page**,int *) ;
 int page_to_nid (struct page*) ;
 int put_page (struct page*) ;

__attribute__((used)) static int lookup_node(struct mm_struct *mm, unsigned long addr)
{
 struct page *p;
 int err;

 err = get_user_pages(current, mm, addr & PAGE_MASK, 1, 0, 0, &p, ((void*)0));
 if (err >= 0) {
  err = page_to_nid(p);
  put_page(p);
 }
 return err;
}
