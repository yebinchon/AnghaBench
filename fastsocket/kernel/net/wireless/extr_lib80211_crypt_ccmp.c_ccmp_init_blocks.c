
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ieee80211_hdr {int* addr4; int* addr2; int* addr1; int seq_ctrl; int frame_control; } ;
struct crypto_cipher {int dummy; } ;


 int AES_BLOCK_LEN ;
 int CCMP_PN_LEN ;
 int ETH_ALEN ;
 int ieee80211_has_a4 (int ) ;
 int ieee80211_is_data_qos (int ) ;
 int lib80211_ccmp_aes_encrypt (struct crypto_cipher*,int*,int*) ;
 int memcpy (int*,int*,int) ;
 int memset (int*,int ,int) ;
 int xor_block (int*,int*,int) ;

__attribute__((used)) static void ccmp_init_blocks(struct crypto_cipher *tfm,
        struct ieee80211_hdr *hdr,
        u8 * pn, size_t dlen, u8 * b0, u8 * auth, u8 * s0)
{
 u8 *pos, qc = 0;
 size_t aad_len;
 int a4_included, qc_included;
 u8 aad[2 * AES_BLOCK_LEN];

 a4_included = ieee80211_has_a4(hdr->frame_control);
 qc_included = ieee80211_is_data_qos(hdr->frame_control);

 aad_len = 22;
 if (a4_included)
  aad_len += 6;
 if (qc_included) {
  pos = (u8 *) & hdr->addr4;
  if (a4_included)
   pos += 6;
  qc = *pos & 0x0f;
  aad_len += 2;
 }






 b0[0] = 0x59;
 b0[1] = qc;
 memcpy(b0 + 2, hdr->addr2, ETH_ALEN);
 memcpy(b0 + 8, pn, CCMP_PN_LEN);
 b0[14] = (dlen >> 8) & 0xff;
 b0[15] = dlen & 0xff;
 pos = (u8 *) hdr;
 aad[0] = 0;
 aad[1] = aad_len & 0xff;
 aad[2] = pos[0] & 0x8f;
 aad[3] = pos[1] & 0xc7;
 memcpy(aad + 4, hdr->addr1, 3 * ETH_ALEN);
 pos = (u8 *) & hdr->seq_ctrl;
 aad[22] = pos[0] & 0x0f;
 aad[23] = 0;
 memset(aad + 24, 0, 8);
 if (a4_included)
  memcpy(aad + 24, hdr->addr4, ETH_ALEN);
 if (qc_included) {
  aad[a4_included ? 30 : 24] = qc;

 }


 lib80211_ccmp_aes_encrypt(tfm, b0, auth);
 xor_block(auth, aad, AES_BLOCK_LEN);
 lib80211_ccmp_aes_encrypt(tfm, auth, auth);
 xor_block(auth, &aad[AES_BLOCK_LEN], AES_BLOCK_LEN);
 lib80211_ccmp_aes_encrypt(tfm, auth, auth);
 b0[0] &= 0x07;
 b0[14] = b0[15] = 0;
 lib80211_ccmp_aes_encrypt(tfm, b0, s0);
}
