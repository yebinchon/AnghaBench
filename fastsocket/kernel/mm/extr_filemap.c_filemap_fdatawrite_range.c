
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct address_space {int dummy; } ;
typedef int loff_t ;


 int WB_SYNC_ALL ;
 int __filemap_fdatawrite_range (struct address_space*,int ,int ,int ) ;

int filemap_fdatawrite_range(struct address_space *mapping, loff_t start,
    loff_t end)
{
 return __filemap_fdatawrite_range(mapping, start, end, WB_SYNC_ALL);
}
