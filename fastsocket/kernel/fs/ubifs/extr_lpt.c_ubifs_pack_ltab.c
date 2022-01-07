
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
struct ubifs_lpt_lprops {int dirty; int free; } ;
struct ubifs_info {int lpt_lebs; int ltab_sz; int lpt_spc_bits; } ;


 int UBIFS_LPT_CRC_BITS ;
 int UBIFS_LPT_CRC_BYTES ;
 int UBIFS_LPT_LTAB ;
 int UBIFS_LPT_TYPE_BITS ;
 int crc16 (int,void*,int) ;
 int pack_bits (int **,int*,int ,int ) ;

void ubifs_pack_ltab(struct ubifs_info *c, void *buf,
       struct ubifs_lpt_lprops *ltab)
{
 uint8_t *addr = buf + UBIFS_LPT_CRC_BYTES;
 int i, pos = 0;
 uint16_t crc;

 pack_bits(&addr, &pos, UBIFS_LPT_LTAB, UBIFS_LPT_TYPE_BITS);
 for (i = 0; i < c->lpt_lebs; i++) {
  pack_bits(&addr, &pos, ltab[i].free, c->lpt_spc_bits);
  pack_bits(&addr, &pos, ltab[i].dirty, c->lpt_spc_bits);
 }
 crc = crc16(-1, buf + UBIFS_LPT_CRC_BYTES,
      c->ltab_sz - UBIFS_LPT_CRC_BYTES);
 addr = buf;
 pos = 0;
 pack_bits(&addr, &pos, crc, UBIFS_LPT_CRC_BITS);
}
