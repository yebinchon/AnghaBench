
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct writeback_control {int dummy; } ;
struct page {int dummy; } ;


 int ext2_get_block ;
 int nobh_writepage (struct page*,int ,struct writeback_control*) ;

__attribute__((used)) static int ext2_nobh_writepage(struct page *page,
   struct writeback_control *wbc)
{
 return nobh_writepage(page, ext2_get_block, wbc);
}
