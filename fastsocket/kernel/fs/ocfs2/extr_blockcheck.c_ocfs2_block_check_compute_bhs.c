
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
typedef scalar_t__ u16 ;
struct ocfs2_block_check {int bc_ecc; int bc_crc32e; } ;
struct buffer_head {int b_size; int b_data; } ;


 int BUG_ON (int) ;
 scalar_t__ USHORT_MAX ;
 int cpu_to_le16 (scalar_t__) ;
 int cpu_to_le32 (scalar_t__) ;
 scalar_t__ crc32_le (scalar_t__,int ,int) ;
 int memset (struct ocfs2_block_check*,int ,int) ;
 scalar_t__ ocfs2_hamming_encode (scalar_t__,int ,int,int) ;

void ocfs2_block_check_compute_bhs(struct buffer_head **bhs, int nr,
       struct ocfs2_block_check *bc)
{
 int i;
 u32 crc, ecc;

 BUG_ON(nr < 0);

 if (!nr)
  return;

 memset(bc, 0, sizeof(struct ocfs2_block_check));

 for (i = 0, crc = ~0, ecc = 0; i < nr; i++) {
  crc = crc32_le(crc, bhs[i]->b_data, bhs[i]->b_size);





  ecc = (u16)ocfs2_hamming_encode(ecc, bhs[i]->b_data,
      bhs[i]->b_size * 8,
      bhs[i]->b_size * 8 * i);
 }





 BUG_ON(ecc > USHORT_MAX);

 bc->bc_crc32e = cpu_to_le32(crc);
 bc->bc_ecc = cpu_to_le16((u16)ecc);
}
