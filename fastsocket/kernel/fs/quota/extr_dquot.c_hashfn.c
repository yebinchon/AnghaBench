
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;


 unsigned long L1_CACHE_SHIFT ;
 int MAXQUOTAS ;
 unsigned long dq_hash_bits ;
 unsigned long dq_hash_mask ;

__attribute__((used)) static inline unsigned int
hashfn(const struct super_block *sb, unsigned int id, int type)
{
 unsigned long tmp;

 tmp = (((unsigned long)sb>>L1_CACHE_SHIFT) ^ id) * (MAXQUOTAS - type);
 return (tmp + (tmp >> dq_hash_bits)) & dq_hash_mask;
}
