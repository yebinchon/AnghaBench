
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_3__ {int h; int (* gh ) (void*,int ,unsigned char*,int) ;int seq; } ;
typedef TYPE_1__ br_sslrec_gcm_context ;


 int br_enc16be (unsigned char*,size_t) ;
 int br_enc64be (unsigned char*,int) ;
 int memset (void*,int ,int) ;
 int stub1 (void*,int ,unsigned char*,int) ;
 int stub2 (void*,int ,void*,size_t) ;
 int stub3 (void*,int ,unsigned char*,int) ;

__attribute__((used)) static void
do_tag(br_sslrec_gcm_context *cc,
 int record_type, unsigned version,
 void *data, size_t len, void *tag)
{
 unsigned char header[13];
 unsigned char footer[16];
 br_enc64be(header, cc->seq ++);
 header[8] = (unsigned char)record_type;
 br_enc16be(header + 9, version);
 br_enc16be(header + 11, len);
 br_enc64be(footer, (uint64_t)(sizeof header) << 3);
 br_enc64be(footer + 8, (uint64_t)len << 3);
 memset(tag, 0, 16);
 cc->gh(tag, cc->h, header, sizeof header);
 cc->gh(tag, cc->h, data, len);
 cc->gh(tag, cc->h, footer, sizeof footer);
}
