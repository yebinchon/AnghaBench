
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hash_t ;


 int hash_add (int *,void*) ;

__attribute__((used)) static int
hash_add_cb(void *node, void *private)
{
 hash_add((hash_t *)private, node);
 return (0);
}
