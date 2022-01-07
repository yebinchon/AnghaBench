
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kfifo {int dummy; } ;
typedef int p ;


 int __kfifo_get (struct kfifo*,void*,int) ;

__attribute__((used)) static inline void *cq_get(struct kfifo *kfifo)
{
 void *p = ((void*)0);

 __kfifo_get(kfifo, (void *)&p, sizeof(p));
 return p;
}
