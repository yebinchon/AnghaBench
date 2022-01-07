
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int br_sslrec_out_clear_context ;


 int br_enc16be (unsigned char*,size_t) ;

__attribute__((used)) static unsigned char *
clear_encrypt(br_sslrec_out_clear_context *cc,
 int record_type, unsigned version, void *data, size_t *data_len)
{
 unsigned char *buf;

 (void)cc;
 buf = (unsigned char *)data - 5;
 buf[0] = record_type;
 br_enc16be(buf + 1, version);
 br_enc16be(buf + 3, *data_len);
 *data_len += 5;
 return buf;
}
