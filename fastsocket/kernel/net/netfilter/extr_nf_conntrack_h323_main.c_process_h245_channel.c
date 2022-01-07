
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct nf_conn {int dummy; } ;
typedef enum ip_conntrack_info { ____Placeholder_ip_conntrack_info } ip_conntrack_info ;
struct TYPE_3__ {int options; int mediaControlChannel; int mediaChannel; } ;
typedef TYPE_1__ H2250LogicalChannelParameters ;


 int eH2250LogicalChannelParameters_mediaChannel ;
 int eH2250LogicalChannelParameters_mediaControlChannel ;
 int expect_rtp_rtcp (struct sk_buff*,struct nf_conn*,int,unsigned char**,int,int *) ;

__attribute__((used)) static int process_h245_channel(struct sk_buff *skb,
    struct nf_conn *ct,
    enum ip_conntrack_info ctinfo,
    unsigned char **data, int dataoff,
    H2250LogicalChannelParameters *channel)
{
 int ret;

 if (channel->options & eH2250LogicalChannelParameters_mediaChannel) {

  ret = expect_rtp_rtcp(skb, ct, ctinfo, data, dataoff,
          &channel->mediaChannel);
  if (ret < 0)
   return -1;
 }

 if (channel->
     options & eH2250LogicalChannelParameters_mediaControlChannel) {

  ret = expect_rtp_rtcp(skb, ct, ctinfo, data, dataoff,
          &channel->mediaControlChannel);
  if (ret < 0)
   return -1;
 }

 return 0;
}
