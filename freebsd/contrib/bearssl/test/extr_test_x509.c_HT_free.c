
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* buckets; } ;
typedef TYPE_1__ HT ;


 int HT_clear (TYPE_1__*,void (*) (void*)) ;
 int xfree (TYPE_1__*) ;

__attribute__((used)) static void
HT_free(HT *ht, void (*free_value)(void *value))
{
 HT_clear(ht, free_value);
 xfree(ht->buckets);
 xfree(ht);
}
