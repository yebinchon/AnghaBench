
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;


 unsigned long GOLDEN_RATIO_PRIME ;
 unsigned long I_HASHBITS ;
 unsigned long I_HASHMASK ;
 unsigned long L1_CACHE_BYTES ;

__attribute__((used)) static unsigned long hash(struct super_block *sb, unsigned long hashval)
{
 unsigned long tmp;

 tmp = (hashval * (unsigned long)sb) ^ (GOLDEN_RATIO_PRIME + hashval) /
   L1_CACHE_BYTES;
 tmp = tmp ^ ((tmp ^ GOLDEN_RATIO_PRIME) >> I_HASHBITS);
 return tmp & I_HASHMASK;
}
