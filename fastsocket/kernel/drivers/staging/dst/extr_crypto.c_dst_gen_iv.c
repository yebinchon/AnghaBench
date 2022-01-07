
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct dst_trans {int gen; } ;



__attribute__((used)) static inline u64 dst_gen_iv(struct dst_trans *t)
{
 return t->gen;
}
