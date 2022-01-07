
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct elfcopy {int s_cnt; int s_sn_sz; char* s_sn; char* as; int as_sz; scalar_t__* s_so; } ;


 size_t _ARHDR_LEN ;
 size_t _ARMAG_LEN ;
 scalar_t__ htobe32 (scalar_t__) ;

__attribute__((used)) static void
sync_ar(struct elfcopy *ecp)
{
 size_t s_sz;
 size_t pm_sz;
 int i;






 if (ecp->s_cnt != 0 && ecp->s_sn_sz % 2 != 0)
  ecp->s_sn[ecp->s_sn_sz++] = '\0';






 if (ecp->as != ((void*)0) && ecp->as_sz % 2 != 0)
  ecp->as[ecp->as_sz++] = '\n';
 if (ecp->s_cnt != 0) {
  s_sz = (ecp->s_cnt + 1) * sizeof(uint32_t) + ecp->s_sn_sz;
  pm_sz = _ARMAG_LEN + (_ARHDR_LEN + s_sz);
  if (ecp->as != ((void*)0))
   pm_sz += _ARHDR_LEN + ecp->as_sz;
  for (i = 0; (size_t)i < ecp->s_cnt; i++)
   *(ecp->s_so + i) = htobe32(*(ecp->s_so + i) +
       pm_sz);
 }
}
