
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct page {int dummy; } ;
struct TYPE_4__ {unsigned long buf; } ;
struct TYPE_5__ {unsigned long count; unsigned long written; TYPE_1__ arg; int error; } ;
typedef TYPE_2__ read_descriptor_t ;


 int EFAULT ;
 int KM_USER0 ;
 unsigned long __copy_to_user (unsigned long,char*,unsigned long) ;
 unsigned long __copy_to_user_inatomic (unsigned long,char*,unsigned long) ;
 int fault_in_pages_writeable (unsigned long,unsigned long) ;
 char* kmap (struct page*) ;
 char* kmap_atomic (struct page*,int ) ;
 int kunmap (struct page*) ;
 int kunmap_atomic (char*,int ) ;

int file_read_actor(read_descriptor_t *desc, struct page *page,
   unsigned long offset, unsigned long size)
{
 char *kaddr;
 unsigned long left, count = desc->count;

 if (size > count)
  size = count;





 if (!fault_in_pages_writeable(desc->arg.buf, size)) {
  kaddr = kmap_atomic(page, KM_USER0);
  left = __copy_to_user_inatomic(desc->arg.buf,
      kaddr + offset, size);
  kunmap_atomic(kaddr, KM_USER0);
  if (left == 0)
   goto success;
 }


 kaddr = kmap(page);
 left = __copy_to_user(desc->arg.buf, kaddr + offset, size);
 kunmap(page);

 if (left) {
  size -= left;
  desc->error = -EFAULT;
 }
success:
 desc->count = count - size;
 desc->written += size;
 desc->arg.buf += size;
 return size;
}
