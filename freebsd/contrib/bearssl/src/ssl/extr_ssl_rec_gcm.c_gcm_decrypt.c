
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned char uint32_t ;
typedef int br_sslrec_gcm_context ;


 int do_ctr (int *,void*,unsigned char*,size_t,unsigned char*) ;
 int do_tag (int *,int,unsigned int,unsigned char*,size_t,unsigned char*) ;

__attribute__((used)) static unsigned char *
gcm_decrypt(br_sslrec_gcm_context *cc,
 int record_type, unsigned version, void *data, size_t *data_len)
{
 unsigned char *buf;
 size_t len, u;
 uint32_t bad;
 unsigned char tag[16];

 buf = (unsigned char *)data + 8;
 len = *data_len - 24;
 do_tag(cc, record_type, version, buf, len, tag);
 do_ctr(cc, data, buf, len, tag);






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
