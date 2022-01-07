
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int const DCCP_NR_PKT_TYPES ;
const char *dccp_packet_name(const int type)
{
 static const char *const dccp_packet_names[] = {
  [132] = "REQUEST",
  [130] = "RESPONSE",
  [134] = "DATA",
  [137] = "ACK",
  [133] = "DATAACK",
  [135] = "CLOSEREQ",
  [136] = "CLOSE",
  [131] = "RESET",
  [129] = "SYNC",
  [128] = "SYNCACK",
 };

 if (type >= DCCP_NR_PKT_TYPES)
  return "INVALID";
 else
  return dccp_packet_names[type];
}
