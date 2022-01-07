
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tc_u_common {int hgenerator; } ;


 scalar_t__ u32_lookup_ht (struct tc_u_common*,int) ;

__attribute__((used)) static u32 gen_new_htid(struct tc_u_common *tp_c)
{
 int i = 0x800;

 do {
  if (++tp_c->hgenerator == 0x7FF)
   tp_c->hgenerator = 1;
 } while (--i>0 && u32_lookup_ht(tp_c, (tp_c->hgenerator|0x800)<<20));

 return i > 0 ? (tp_c->hgenerator|0x800)<<20 : 0;
}
