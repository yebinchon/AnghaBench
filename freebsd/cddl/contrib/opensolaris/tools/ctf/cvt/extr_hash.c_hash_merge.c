
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hash_t ;


 int hash_add_cb ;
 int hash_iter (int *,int ,int *) ;

void
hash_merge(hash_t *to, hash_t *from)
{
 (void) hash_iter(from, hash_add_cb, to);
}
