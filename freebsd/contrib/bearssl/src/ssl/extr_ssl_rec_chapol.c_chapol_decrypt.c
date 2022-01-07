
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int br_sslrec_chapol_context ;


 int gen_chapol_process (int *,int,unsigned int,unsigned char*,size_t,unsigned char*,int ) ;

__attribute__((used)) static unsigned char *
chapol_decrypt(br_sslrec_chapol_context *cc,
 int record_type, unsigned version, void *data, size_t *data_len)
{
 unsigned char *buf;
 size_t u, len;
 unsigned char tag[16];
 unsigned bad;

 buf = data;
 len = *data_len - 16;
 gen_chapol_process(cc, record_type, version, buf, len, tag, 0);
 bad = 0;
 for (u = 0; u < 16; u ++) {
  bad |= tag[u] ^ buf[len + u];
 }
 if (bad) {
  return ((void*)0);
 }
 *data_len = len;
 return buf;
}
