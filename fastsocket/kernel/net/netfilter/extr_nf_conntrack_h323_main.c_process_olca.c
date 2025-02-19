
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct nf_conn {int dummy; } ;
typedef enum ip_conntrack_info { ____Placeholder_ip_conntrack_info } ip_conntrack_info ;
struct TYPE_15__ {int options; int mediaControlChannel; int mediaChannel; } ;
struct TYPE_12__ {scalar_t__ choice; int localAreaAddress; } ;
struct TYPE_13__ {TYPE_4__ networkAddress; } ;
struct TYPE_11__ {scalar_t__ choice; TYPE_7__ h2250LogicalChannelAckParameters; } ;
struct TYPE_9__ {scalar_t__ choice; int h2250LogicalChannelParameters; } ;
struct TYPE_10__ {int options; TYPE_1__ multiplexParameters; } ;
struct TYPE_14__ {int options; TYPE_5__ separateStack; TYPE_3__ forwardMultiplexAckParameters; TYPE_2__ reverseLogicalChannelParameters; } ;
typedef TYPE_6__ OpenLogicalChannelAck ;
typedef TYPE_7__ H2250LogicalChannelAckParameters ;


 int eH2250LogicalChannelAckParameters_mediaChannel ;
 int eH2250LogicalChannelAckParameters_mediaControlChannel ;
 scalar_t__ eNetworkAccessParameters_networkAddress_localAreaAddress ;
 int eOpenLogicalChannelAck_forwardMultiplexAckParameters ;
 scalar_t__ eOpenLogicalChannelAck_forwardMultiplexAckParameters_h2250LogicalChannelAckParameters ;
 int eOpenLogicalChannelAck_reverseLogicalChannelParameters ;
 int eOpenLogicalChannelAck_reverseLogicalChannelParameters_multiplexParameters ;
 scalar_t__ eOpenLogicalChannelAck_reverseLogicalChannelParameters_multiplexParameters_h2250LogicalChannelParameters ;
 int eOpenLogicalChannelAck_separateStack ;
 int expect_rtp_rtcp (struct sk_buff*,struct nf_conn*,int,unsigned char**,int,int *) ;
 int expect_t120 (struct sk_buff*,struct nf_conn*,int,unsigned char**,int,int *) ;
 int pr_debug (char*) ;
 int process_h245_channel (struct sk_buff*,struct nf_conn*,int,unsigned char**,int,int *) ;

__attribute__((used)) static int process_olca(struct sk_buff *skb, struct nf_conn *ct,
   enum ip_conntrack_info ctinfo,
   unsigned char **data, int dataoff,
   OpenLogicalChannelAck *olca)
{
 H2250LogicalChannelAckParameters *ack;
 int ret;

 pr_debug("nf_ct_h323: OpenLogicalChannelAck\n");

 if ((olca->options &
      eOpenLogicalChannelAck_reverseLogicalChannelParameters) &&
     (olca->reverseLogicalChannelParameters.options &
      eOpenLogicalChannelAck_reverseLogicalChannelParameters_multiplexParameters)
     && (olca->reverseLogicalChannelParameters.multiplexParameters.
  choice ==
  eOpenLogicalChannelAck_reverseLogicalChannelParameters_multiplexParameters_h2250LogicalChannelParameters))
 {
  ret = process_h245_channel(skb, ct, ctinfo, data, dataoff,
        &olca->
        reverseLogicalChannelParameters.
        multiplexParameters.
        h2250LogicalChannelParameters);
  if (ret < 0)
   return -1;
 }

 if ((olca->options &
      eOpenLogicalChannelAck_forwardMultiplexAckParameters) &&
     (olca->forwardMultiplexAckParameters.choice ==
      eOpenLogicalChannelAck_forwardMultiplexAckParameters_h2250LogicalChannelAckParameters))
 {
  ack = &olca->forwardMultiplexAckParameters.
      h2250LogicalChannelAckParameters;
  if (ack->options &
      eH2250LogicalChannelAckParameters_mediaChannel) {

   ret = expect_rtp_rtcp(skb, ct, ctinfo, data, dataoff,
           &ack->mediaChannel);
   if (ret < 0)
    return -1;
  }

  if (ack->options &
      eH2250LogicalChannelAckParameters_mediaControlChannel) {

   ret = expect_rtp_rtcp(skb, ct, ctinfo, data, dataoff,
           &ack->mediaControlChannel);
   if (ret < 0)
    return -1;
  }
 }

 if ((olca->options & eOpenLogicalChannelAck_separateStack) &&
  olca->separateStack.networkAddress.choice ==
  eNetworkAccessParameters_networkAddress_localAreaAddress) {
  ret = expect_t120(skb, ct, ctinfo, data, dataoff,
      &olca->separateStack.networkAddress.
      localAreaAddress);
  if (ret < 0)
   return -1;
 }

 return 0;
}
