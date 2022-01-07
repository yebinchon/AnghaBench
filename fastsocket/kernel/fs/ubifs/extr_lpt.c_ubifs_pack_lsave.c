
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
struct ubifs_info {int lsave_cnt; int lsave_sz; int lnum_bits; } ;


 int UBIFS_LPT_CRC_BITS ;
 int UBIFS_LPT_CRC_BYTES ;
 int UBIFS_LPT_LSAVE ;
 int UBIFS_LPT_TYPE_BITS ;
 int crc16 (int,void*,int) ;
 int pack_bits (int **,int*,int,int ) ;

void ubifs_pack_lsave(struct ubifs_info *c, void *buf, int *lsave)
{
 uint8_t *addr = buf + UBIFS_LPT_CRC_BYTES;
 int i, pos = 0;
 uint16_t crc;

 pack_bits(&addr, &pos, UBIFS_LPT_LSAVE, UBIFS_LPT_TYPE_BITS);
 for (i = 0; i < c->lsave_cnt; i++)
  pack_bits(&addr, &pos, lsave[i], c->lnum_bits);
 crc = crc16(-1, buf + UBIFS_LPT_CRC_BYTES,
      c->lsave_sz - UBIFS_LPT_CRC_BYTES);
 addr = buf;
 pos = 0;
 pack_bits(&addr, &pos, crc, UBIFS_LPT_CRC_BITS);
}
