
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kfifo {int dummy; } ;


 int GFP_KERNEL ;
 struct kfifo* kfifo_alloc (int,int ,int *) ;

__attribute__((used)) static inline struct kfifo *cq_new(int size)
{
 return kfifo_alloc(size * sizeof(void *), GFP_KERNEL, ((void*)0));
}
