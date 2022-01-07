
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kfifo {int dummy; } ;


 int __kfifo_len (struct kfifo*) ;

__attribute__((used)) static inline unsigned int cq_howmany(struct kfifo *kfifo)
{
 return __kfifo_len(kfifo) / sizeof(void *);
}
