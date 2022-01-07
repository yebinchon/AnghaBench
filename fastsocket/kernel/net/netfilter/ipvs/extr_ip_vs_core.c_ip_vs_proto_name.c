
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int sprintf (char*,char*,unsigned int) ;

const char *ip_vs_proto_name(unsigned proto)
{
 static char buf[20];

 switch (proto) {
 case 131:
  return "IP";
 case 128:
  return "UDP";
 case 129:
  return "TCP";
 case 130:
  return "SCTP";
 case 133:
  return "ICMP";




 default:
  sprintf(buf, "IP_%d", proto);
  return buf;
 }
}
