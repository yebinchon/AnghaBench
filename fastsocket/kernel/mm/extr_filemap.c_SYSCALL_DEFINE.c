
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int f_mode; struct address_space* f_mapping; } ;
struct address_space {int dummy; } ;
typedef int ssize_t ;
typedef int pgoff_t ;
typedef size_t loff_t ;
typedef int SYSCALL_DEFINE ;


 int EBADF ;
 int FMODE_READ ;
 size_t PAGE_CACHE_SHIFT ;
 int do_readahead (struct address_space*,struct file*,int,unsigned long) ;
 struct file* fget (int) ;
 int fput (struct file*) ;

SYSCALL_DEFINE(readahead)(int fd, loff_t offset, size_t count)
{
 ssize_t ret;
 struct file *file;

 ret = -EBADF;
 file = fget(fd);
 if (file) {
  if (file->f_mode & FMODE_READ) {
   struct address_space *mapping = file->f_mapping;
   pgoff_t start = offset >> PAGE_CACHE_SHIFT;
   pgoff_t end = (offset + count - 1) >> PAGE_CACHE_SHIFT;
   unsigned long len = end - start + 1;
   ret = do_readahead(mapping, file, start, len);
  }
  fput(file);
 }
 return ret;
}
