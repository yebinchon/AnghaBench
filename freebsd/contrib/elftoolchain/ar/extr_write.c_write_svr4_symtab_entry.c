
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint32_t ;
struct bsdar {size_t s_cnt; size_t* s_so; int* s_sn; int s_sn_sz; } ;
struct archive {int dummy; } ;


 void* htobe32 (size_t) ;
 int write_data (struct bsdar*,struct archive*,int*,int) ;

__attribute__((used)) static void
write_svr4_symtab_entry(struct bsdar *bsdar, struct archive *a)
{
 int nr;
 uint32_t i;


 for (i = 0; i < bsdar->s_cnt; i++)
  bsdar->s_so[i] = htobe32(bsdar->s_so[i]);

 nr = htobe32(bsdar->s_cnt);
 write_data(bsdar, a, &nr, sizeof(uint32_t));
 write_data(bsdar, a, bsdar->s_so, sizeof(uint32_t) *
     bsdar->s_cnt);
 write_data(bsdar, a, bsdar->s_sn, bsdar->s_sn_sz);
}
