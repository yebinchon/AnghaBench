
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct file {int dummy; } ;
typedef int ssize_t ;
typedef int loff_t ;


 int EIO ;

__attribute__((used)) static ssize_t bad_file_sendpage(struct file *file, struct page *page,
   int off, size_t len, loff_t *pos, int more)
{
 return -EIO;
}
