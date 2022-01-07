
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
typedef int sctp_sctphdr_t ;
struct TYPE_4__ {scalar_t__ type; } ;
typedef TYPE_1__ sctp_chunkhdr_t ;
typedef int schunk ;


 scalar_t__ SCTP_CID_ABORT ;
 TYPE_1__* skb_header_pointer (struct sk_buff const*,int,int,TYPE_1__*) ;

__attribute__((used)) static inline int is_sctp_abort(const struct sk_buff *skb, int nh_len)
{
 sctp_chunkhdr_t *sch, schunk;
 sch = skb_header_pointer(skb, nh_len + sizeof(sctp_sctphdr_t),
   sizeof(schunk), &schunk);
 if (sch == ((void*)0))
  return 0;
 if (sch->type == SCTP_CID_ABORT)
  return 1;
 return 0;
}
