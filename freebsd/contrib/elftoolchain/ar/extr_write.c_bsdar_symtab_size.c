
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct bsdar {int options; int s_cnt; int s_sn_sz; } ;


 int AR_BSD ;

__attribute__((used)) static size_t
bsdar_symtab_size(struct bsdar *bsdar)
{
 size_t sz;

 if (bsdar->options & AR_BSD) {
  sz = 2 * sizeof(long) + (bsdar->s_cnt * 2 * sizeof(long)) +
      bsdar->s_sn_sz;
 } else {






  sz = sizeof(uint32_t) + bsdar->s_cnt * sizeof(uint32_t) +
      bsdar->s_sn_sz;
 }

 return (sz);
}
