
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int h_nbuckets; int * h_buckets; } ;
typedef TYPE_1__ hash_t ;


 scalar_t__ list_count (int ) ;

int
hash_count(hash_t *hash)
{
 int num, i;

 for (num = 0, i = 0; i < hash->h_nbuckets; i++)
  num += list_count(hash->h_buckets[i]);

 return (num);
}
