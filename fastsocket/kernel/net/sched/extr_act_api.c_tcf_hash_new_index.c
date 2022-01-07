
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct tcf_hashinfo {int dummy; } ;


 scalar_t__ tcf_hash_lookup (scalar_t__,struct tcf_hashinfo*) ;

u32 tcf_hash_new_index(u32 *idx_gen, struct tcf_hashinfo *hinfo)
{
 u32 val = *idx_gen;

 do {
  if (++val == 0)
   val = 1;
 } while (tcf_hash_lookup(val, hinfo));

 return (*idx_gen = val);
}
