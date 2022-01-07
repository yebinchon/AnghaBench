
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int br_sslrec_chapol_context ;


 int br_enc16be (unsigned char*,size_t) ;
 int gen_chapol_process (int *,int,unsigned int,unsigned char*,size_t,unsigned char*,int) ;

__attribute__((used)) static unsigned char *
chapol_encrypt(br_sslrec_chapol_context *cc,
 int record_type, unsigned version, void *data, size_t *data_len)
{
 unsigned char *buf;
 size_t len;

 buf = data;
 len = *data_len;
 gen_chapol_process(cc, record_type, version, buf, len, buf + len, 1);
 buf -= 5;
 buf[0] = (unsigned char)record_type;
 br_enc16be(buf + 1, version);
 br_enc16be(buf + 3, len + 16);
 *data_len = len + 21;
 return buf;
}
