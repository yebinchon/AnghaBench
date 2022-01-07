
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* h_cmp ) (void*,void*) ;} ;
typedef TYPE_1__ hash_t ;


 int stub1 (void*,void*) ;

__attribute__((used)) static int
hash_remove_cb(void *key1, void *key2, void *arg)
{
 hash_t *hash = arg;
 return (hash->h_cmp(key1, key2));
}
