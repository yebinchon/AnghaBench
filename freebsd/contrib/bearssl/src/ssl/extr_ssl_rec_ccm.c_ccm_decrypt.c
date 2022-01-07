
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int vtable; } ;
struct TYPE_5__ {int tag_len; void* iv; TYPE_1__ bc; int seq; } ;
typedef TYPE_2__ br_sslrec_ccm_context ;
typedef int br_ccm_context ;


 int br_ccm_aad_inject (int *,unsigned char*,int) ;
 int br_ccm_check_tag (int *,unsigned char*) ;
 int br_ccm_flip (int *) ;
 int br_ccm_init (int *,int *) ;
 int br_ccm_reset (int *,unsigned char*,int,int,size_t,int) ;
 int br_ccm_run (int *,int ,unsigned char*,size_t) ;
 int br_enc16be (unsigned char*,size_t) ;
 int br_enc64be (unsigned char*,int ) ;
 int memcpy (unsigned char*,void*,int) ;

__attribute__((used)) static unsigned char *
ccm_decrypt(br_sslrec_ccm_context *cc,
 int record_type, unsigned version, void *data, size_t *data_len)
{
 br_ccm_context zc;
 unsigned char *buf;
 unsigned char nonce[12], header[13];
 size_t len;

 buf = (unsigned char *)data + 8;
 len = *data_len - (8 + cc->tag_len);




 memcpy(nonce, cc->iv, sizeof cc->iv);
 memcpy(nonce + 4, data, 8);




 br_enc64be(header, cc->seq ++);
 header[8] = (unsigned char)record_type;
 br_enc16be(header + 9, version);
 br_enc16be(header + 11, len);




 br_ccm_init(&zc, &cc->bc.vtable);
 br_ccm_reset(&zc, nonce, sizeof nonce, sizeof header, len, cc->tag_len);
 br_ccm_aad_inject(&zc, header, sizeof header);
 br_ccm_flip(&zc);
 br_ccm_run(&zc, 0, buf, len);
 if (!br_ccm_check_tag(&zc, buf + len)) {
  return ((void*)0);
 }
 *data_len = len;
 return buf;
}
