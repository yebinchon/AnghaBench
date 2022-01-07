
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
 int SECCLASS_APPLETALK_SOCKET ;
 int SECCLASS_DCCP_SOCKET ;
 int SECCLASS_KEY_SOCKET ;
 int SECCLASS_NETLINK_AUDIT_SOCKET ;
 int SECCLASS_NETLINK_DNRT_SOCKET ;
 int SECCLASS_NETLINK_FIREWALL_SOCKET ;
 int SECCLASS_NETLINK_IP6FW_SOCKET ;
 int SECCLASS_NETLINK_KOBJECT_UEVENT_SOCKET ;
 int SECCLASS_NETLINK_NFLOG_SOCKET ;
 int SECCLASS_NETLINK_ROUTE_SOCKET ;
 int SECCLASS_NETLINK_SELINUX_SOCKET ;
 int SECCLASS_NETLINK_SOCKET ;
 int SECCLASS_NETLINK_TCPDIAG_SOCKET ;
 int SECCLASS_NETLINK_XFRM_SOCKET ;
 int SECCLASS_PACKET_SOCKET ;
 int SECCLASS_RAWIP_SOCKET ;
 int SECCLASS_SOCKET ;
 int SECCLASS_TCP_SOCKET ;
 int SECCLASS_UDP_SOCKET ;
 int SECCLASS_UNIX_DGRAM_SOCKET ;
 int SECCLASS_UNIX_STREAM_SOCKET ;




 int default_protocol_dgram (int) ;
 int default_protocol_stream (int) ;

__attribute__((used)) static inline u16 socket_type_to_security_class(int family, int type, int protocol)
{
 switch (family) {
 case 132:
  switch (type) {
  case 128:
  case 129:
   return SECCLASS_UNIX_STREAM_SOCKET;
  case 130:
   return SECCLASS_UNIX_DGRAM_SOCKET;
  }
  break;
 case 137:
 case 136:
  switch (type) {
  case 128:
   if (default_protocol_stream(protocol))
    return SECCLASS_TCP_SOCKET;
   else
    return SECCLASS_RAWIP_SOCKET;
  case 130:
   if (default_protocol_dgram(protocol))
    return SECCLASS_UDP_SOCKET;
   else
    return SECCLASS_RAWIP_SOCKET;
  case 131:
   return SECCLASS_DCCP_SOCKET;
  default:
   return SECCLASS_RAWIP_SOCKET;
  }
  break;
 case 134:
  switch (protocol) {
  case 141:
   return SECCLASS_NETLINK_ROUTE_SOCKET;
  case 146:
   return SECCLASS_NETLINK_FIREWALL_SOCKET;
  case 145:
   return SECCLASS_NETLINK_TCPDIAG_SOCKET;
  case 142:
   return SECCLASS_NETLINK_NFLOG_SOCKET;
  case 139:
   return SECCLASS_NETLINK_XFRM_SOCKET;
  case 140:
   return SECCLASS_NETLINK_SELINUX_SOCKET;
  case 148:
   return SECCLASS_NETLINK_AUDIT_SOCKET;
  case 144:
   return SECCLASS_NETLINK_IP6FW_SOCKET;
  case 147:
   return SECCLASS_NETLINK_DNRT_SOCKET;
  case 143:
   return SECCLASS_NETLINK_KOBJECT_UEVENT_SOCKET;
  default:
   return SECCLASS_NETLINK_SOCKET;
  }
 case 133:
  return SECCLASS_PACKET_SOCKET;
 case 135:
  return SECCLASS_KEY_SOCKET;
 case 138:
  return SECCLASS_APPLETALK_SOCKET;
 }

 return SECCLASS_SOCKET;
}
