
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct michael_mic_ctx {int r; int l; } ;
struct ieee80211_hdr {int dummy; } ;


 int get_unaligned_le32 (int const*) ;
 int michael_block (struct michael_mic_ctx*,int) ;
 int michael_mic_hdr (struct michael_mic_ctx*,int const*,struct ieee80211_hdr*) ;
 int put_unaligned_le32 (int ,int*) ;

void michael_mic(const u8 *key, struct ieee80211_hdr *hdr,
   const u8 *data, size_t data_len, u8 *mic)
{
 u32 val;
 size_t block, blocks, left;
 struct michael_mic_ctx mctx;

 michael_mic_hdr(&mctx, key, hdr);


 blocks = data_len / 4;
 left = data_len % 4;

 for (block = 0; block < blocks; block++)
  michael_block(&mctx, get_unaligned_le32(&data[block * 4]));



 val = 0x5a;
 while (left > 0) {
  val <<= 8;
  left--;
  val |= data[blocks * 4 + left];
 }

 michael_block(&mctx, val);
 michael_block(&mctx, 0);

 put_unaligned_le32(mctx.l, mic);
 put_unaligned_le32(mctx.r, mic + 4);
}
