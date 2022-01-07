
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gfs2_sbd {int dummy; } ;


 int PAGE_SIZE ;
 int gfs2_assert_withdraw (struct gfs2_sbd*,int) ;

void gfs2_icbit_munge(struct gfs2_sbd *sdp, unsigned char **bitmap,
        unsigned int bit, int new_value)
{
 unsigned int c, o, b = bit;
 int old_value;

 c = b / (8 * PAGE_SIZE);
 b %= 8 * PAGE_SIZE;
 o = b / 8;
 b %= 8;

 old_value = (bitmap[c][o] & (1 << b));
 gfs2_assert_withdraw(sdp, !old_value != !new_value);

 if (new_value)
  bitmap[c][o] |= 1 << b;
 else
  bitmap[c][o] &= ~(1 << b);
}
