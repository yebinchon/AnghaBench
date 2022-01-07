
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int tag_len; } ;
typedef TYPE_1__ br_sslrec_ccm_context ;



__attribute__((used)) static int
ccm_check_length(const br_sslrec_ccm_context *cc, size_t rlen)
{




 size_t over;

 over = 8 + cc->tag_len;
 return rlen >= over && rlen <= (16384 + over);
}
