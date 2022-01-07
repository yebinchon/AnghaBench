
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int value; } ;
struct TYPE_4__ {int range; int value; } ;
struct TYPE_5__ {TYPE_3__ verdict; TYPE_1__ mode; } ;
struct ipq_peer_msg {TYPE_2__ msg; } ;


 int EINVAL ;


 int NF_MAX_VERDICT ;
 int ipq_set_mode (int ,int ) ;
 int ipq_set_verdict (TYPE_3__*,unsigned int) ;

__attribute__((used)) static int
ipq_receive_peer(struct ipq_peer_msg *pmsg,
   unsigned char type, unsigned int len)
{
 int status = 0;

 if (len < sizeof(*pmsg))
  return -EINVAL;

 switch (type) {
 case 129:
  status = ipq_set_mode(pmsg->msg.mode.value,
          pmsg->msg.mode.range);
  break;

 case 128:
  if (pmsg->msg.verdict.value > NF_MAX_VERDICT)
   status = -EINVAL;
  else
   status = ipq_set_verdict(&pmsg->msg.verdict,
       len - sizeof(*pmsg));
   break;
 default:
  status = -EINVAL;
 }
 return status;
}
