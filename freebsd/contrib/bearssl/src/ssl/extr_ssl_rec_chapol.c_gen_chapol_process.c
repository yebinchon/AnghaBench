
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_3__ {int ichacha; int key; int (* ipoly ) (int ,unsigned char*,void*,size_t,unsigned char*,int,void*,int ,int) ;int iv; int seq; } ;
typedef TYPE_1__ br_sslrec_chapol_context ;


 int br_enc16be (unsigned char*,size_t) ;
 int br_enc64be (unsigned char*,int) ;
 int memcpy (unsigned char*,int ,int) ;
 int stub1 (int ,unsigned char*,void*,size_t,unsigned char*,int,void*,int ,int) ;

__attribute__((used)) static void
gen_chapol_process(br_sslrec_chapol_context *cc,
 int record_type, unsigned version, void *data, size_t len,
 void *tag, int encrypt)
{
 unsigned char header[13];
 unsigned char nonce[12];
 uint64_t seq;
 size_t u;

 seq = cc->seq ++;
 br_enc64be(header, seq);
 header[8] = (unsigned char)record_type;
 br_enc16be(header + 9, version);
 br_enc16be(header + 11, len);
 memcpy(nonce, cc->iv, 12);
 for (u = 0; u < 8; u ++) {
  nonce[11 - u] ^= (unsigned char)seq;
  seq >>= 8;
 }
 cc->ipoly(cc->key, nonce, data, len, header, sizeof header,
  tag, cc->ichacha, encrypt);
}
