
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef TYPE_1__* p_hash_bucket ;
struct TYPE_2__ {unsigned int hash; } ;



__attribute__((used)) static unsigned int
htab_hash_bucket (const void *p)
{
  p_hash_bucket bucket = (p_hash_bucket) p;
  return bucket->hash;
}
