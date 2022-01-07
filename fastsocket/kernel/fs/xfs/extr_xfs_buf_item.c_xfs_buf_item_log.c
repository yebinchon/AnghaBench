
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {size_t* blf_data_map; } ;
struct TYPE_6__ {TYPE_1__ bli_format; int bli_flags; } ;
typedef TYPE_2__ xfs_buf_log_item_t ;
typedef size_t uint ;


 size_t BIT_TO_WORD_SHIFT ;
 size_t MIN (size_t,size_t) ;
 int NBWORD ;
 size_t XFS_BLF_SHIFT ;
 int XFS_BLI_DIRTY ;
 int xfs_buf_item_log_debug (TYPE_2__*,size_t,size_t) ;

void
xfs_buf_item_log(
 xfs_buf_log_item_t *bip,
 uint first,
 uint last)
{
 uint first_bit;
 uint last_bit;
 uint bits_to_set;
 uint bits_set;
 uint word_num;
 uint *wordp;
 uint bit;
 uint end_bit;
 uint mask;





 bip->bli_flags |= XFS_BLI_DIRTY;




 first_bit = first >> XFS_BLF_SHIFT;
 last_bit = last >> XFS_BLF_SHIFT;




 bits_to_set = last_bit - first_bit + 1;





 word_num = first_bit >> BIT_TO_WORD_SHIFT;
 wordp = &(bip->bli_format.blf_data_map[word_num]);




 bit = first_bit & (uint)(NBWORD - 1);
 if (bit) {
  end_bit = MIN(bit + bits_to_set, (uint)NBWORD);
  mask = ((1 << (end_bit - bit)) - 1) << bit;
  *wordp |= mask;
  wordp++;
  bits_set = end_bit - bit;
 } else {
  bits_set = 0;
 }





 while ((bits_to_set - bits_set) >= NBWORD) {
  *wordp |= 0xffffffff;
  bits_set += NBWORD;
  wordp++;
 }




 end_bit = bits_to_set - bits_set;
 if (end_bit) {
  mask = (1 << end_bit) - 1;
  *wordp |= mask;
 }

 xfs_buf_item_log_debug(bip, first, last);
}
