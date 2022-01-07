
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct ubifs_info {int lsave_cnt; int main_first; int leb_cnt; int* lsave; int lsave_sz; int lnum_bits; } ;


 int EINVAL ;
 int UBIFS_LPT_CRC_BYTES ;
 int UBIFS_LPT_LSAVE ;
 int check_lpt_crc (void*,int ) ;
 int check_lpt_type (int **,int*,int ) ;
 int ubifs_unpack_bits (int **,int*,int ) ;

__attribute__((used)) static int unpack_lsave(const struct ubifs_info *c, void *buf)
{
 uint8_t *addr = buf + UBIFS_LPT_CRC_BYTES;
 int i, pos = 0, err;

 err = check_lpt_type(&addr, &pos, UBIFS_LPT_LSAVE);
 if (err)
  return err;
 for (i = 0; i < c->lsave_cnt; i++) {
  int lnum = ubifs_unpack_bits(&addr, &pos, c->lnum_bits);

  if (lnum < c->main_first || lnum >= c->leb_cnt)
   return -EINVAL;
  c->lsave[i] = lnum;
 }
 err = check_lpt_crc(buf, c->lsave_sz);
 return err;
}
