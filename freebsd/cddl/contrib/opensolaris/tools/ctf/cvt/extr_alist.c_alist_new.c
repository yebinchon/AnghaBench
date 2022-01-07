
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int alist_t ;


 int ALIST_HASH_SIZE ;
 int alist_cmp ;
 int alist_hash ;
 int * alist_xnew (int ,void (*) (void*),void (*) (void*),int ,int ) ;

alist_t *
alist_new(void (*namefree)(void *), void (*valfree)(void *))
{
 return (alist_xnew(ALIST_HASH_SIZE, namefree, valfree,
     alist_hash, alist_cmp));
}
