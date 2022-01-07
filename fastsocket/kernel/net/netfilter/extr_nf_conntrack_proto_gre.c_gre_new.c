
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct TYPE_5__ {int timeout; int stream_timeout; } ;
struct TYPE_6__ {TYPE_2__ gre; } ;
struct nf_conn {TYPE_3__ proto; TYPE_1__* tuplehash; } ;
struct TYPE_4__ {int tuple; } ;


 int GRE_STREAM_TIMEOUT ;
 int GRE_TIMEOUT ;
 size_t IP_CT_DIR_ORIGINAL ;
 int nf_ct_dump_tuple (int *) ;
 int pr_debug (char*) ;

__attribute__((used)) static bool gre_new(struct nf_conn *ct, const struct sk_buff *skb,
      unsigned int dataoff)
{
 pr_debug(": ");
 nf_ct_dump_tuple(&ct->tuplehash[IP_CT_DIR_ORIGINAL].tuple);



 ct->proto.gre.stream_timeout = GRE_STREAM_TIMEOUT;
 ct->proto.gre.timeout = GRE_TIMEOUT;

 return 1;
}
