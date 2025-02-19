
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tnode {int dummy; } ;


 int GFP_KERNEL ;
 int PAGE_KERNEL ;
 size_t PAGE_SIZE ;
 int __GFP_ZERO ;
 struct tnode* __vmalloc (size_t,int,int ) ;
 struct tnode* kzalloc (size_t,int) ;

__attribute__((used)) static struct tnode *tnode_alloc(size_t size)
{
 if (size <= PAGE_SIZE)
  return kzalloc(size, GFP_KERNEL);
 else
  return __vmalloc(size, GFP_KERNEL | __GFP_ZERO, PAGE_KERNEL);
}
