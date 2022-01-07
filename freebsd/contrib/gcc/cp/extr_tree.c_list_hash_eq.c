
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
struct list_proxy {scalar_t__ value; scalar_t__ purpose; scalar_t__ chain; } ;


 scalar_t__ TREE_CHAIN (int ) ;
 scalar_t__ TREE_PURPOSE (int ) ;
 scalar_t__ TREE_VALUE (int ) ;

__attribute__((used)) static int
list_hash_eq (const void* entry, const void* data)
{
  tree t = (tree) entry;
  struct list_proxy *proxy = (struct list_proxy *) data;

  return (TREE_VALUE (t) == proxy->value
   && TREE_PURPOSE (t) == proxy->purpose
   && TREE_CHAIN (t) == proxy->chain);
}
