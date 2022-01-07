
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct in_device {int dummy; } ;
typedef int __be32 ;


 int IN_DEV_ARP_IGNORE (struct in_device*) ;
 int RT_SCOPE_HOST ;
 int RT_SCOPE_LINK ;
 int inet_confirm_addr (struct in_device*,int ,int ,int) ;

__attribute__((used)) static int arp_ignore(struct in_device *in_dev, __be32 sip, __be32 tip)
{
 int scope;

 switch (IN_DEV_ARP_IGNORE(in_dev)) {
 case 0:
  return 0;
 case 1:
  sip = 0;
  scope = RT_SCOPE_HOST;
  break;
 case 2:



  scope = RT_SCOPE_HOST;
  break;
 case 3:
  sip = 0;
  scope = RT_SCOPE_LINK;
  break;
 case 4:
 case 5:
 case 6:
 case 7:
  return 0;
 case 8:
  return 1;
 default:
  return 0;
 }
 return !inet_confirm_addr(in_dev, sip, tip, scope);
}
