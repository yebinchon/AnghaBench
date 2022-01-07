
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint32_t ;
struct bsdar {int s_cnt; char* s_sn; int s_sn_sz; scalar_t__* s_so; } ;
struct archive {int dummy; } ;


 int write_data (struct bsdar*,struct archive*,long*,int) ;

__attribute__((used)) static void
write_bsd_symtab_entry(struct bsdar *bsdar, struct archive *a)
{
 long br_sz, br_off, br_strx;
 char *s;
 uint32_t i;






 br_sz = (long) (bsdar->s_cnt * 2 * sizeof(long));
 write_data(bsdar, a, &br_sz, sizeof(long));






 for (i = 0, s = bsdar->s_sn; i < bsdar->s_cnt; i++) {
  br_strx = (long) (s - bsdar->s_sn);
  br_off = (long) bsdar->s_so[i];
  write_data(bsdar, a, &br_strx, sizeof(long));
  write_data(bsdar, a, &br_off, sizeof(long));


  while (*s++ != '\0')
   ;
 }





 br_sz = (long) bsdar->s_sn_sz;
 write_data(bsdar, a, &br_sz, sizeof(long));
 write_data(bsdar, a, bsdar->s_sn, bsdar->s_sn_sz);
}
