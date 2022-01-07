
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;
struct net_device {int dummy; } ;


 unsigned int IFF_RUNNING ;
 unsigned int IFF_UP ;
 int NOTIFY_DONE ;
 int RTM_DELLINK ;
 int RTM_NEWLINK ;
 int rtmsg_ifinfo (int ,struct net_device*,unsigned int) ;

__attribute__((used)) static int rtnetlink_event(struct notifier_block *this, unsigned long event, void *ptr)
{
 struct net_device *dev = ptr;

 switch (event) {
 case 129:
  rtmsg_ifinfo(RTM_DELLINK, dev, ~0U);
  break;
 case 128:
 case 135:
  rtmsg_ifinfo(RTM_NEWLINK, dev, IFF_UP|IFF_RUNNING);
  break;
 case 132:
 case 131:
 case 136:
 case 134:
 case 130:
 case 133:
  break;
 default:
  rtmsg_ifinfo(RTM_NEWLINK, dev, 0);
  break;
 }
 return NOTIFY_DONE;
}
