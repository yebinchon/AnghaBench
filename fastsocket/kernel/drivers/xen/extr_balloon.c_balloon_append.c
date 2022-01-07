
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 scalar_t__ PageHighMem (struct page*) ;
 int __balloon_append (struct page*) ;
 int dec_totalhigh_pages () ;
 int totalram_pages ;

__attribute__((used)) static void balloon_append(struct page *page)
{
 __balloon_append(page);
 if (PageHighMem(page))
  dec_totalhigh_pages();
 totalram_pages--;
}
