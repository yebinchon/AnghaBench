
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kfifo {int dummy; } ;
typedef int spinlock_t ;
typedef int gfp_t ;


 int BUG_ON (int) ;
 int ENOMEM ;
 struct kfifo* ERR_PTR (int ) ;
 scalar_t__ IS_ERR (struct kfifo*) ;
 int is_power_of_2 (unsigned int) ;
 struct kfifo* kfifo_init (unsigned char*,unsigned int,int ,int *) ;
 int kfree (unsigned char*) ;
 unsigned char* kmalloc (unsigned int,int ) ;
 unsigned int roundup_pow_of_two (unsigned int) ;

struct kfifo *kfifo_alloc(unsigned int size, gfp_t gfp_mask, spinlock_t *lock)
{
 unsigned char *buffer;
 struct kfifo *ret;





 if (!is_power_of_2(size)) {
  BUG_ON(size > 0x80000000);
  size = roundup_pow_of_two(size);
 }

 buffer = kmalloc(size, gfp_mask);
 if (!buffer)
  return ERR_PTR(-ENOMEM);

 ret = kfifo_init(buffer, size, gfp_mask, lock);

 if (IS_ERR(ret))
  kfree(buffer);

 return ret;
}
