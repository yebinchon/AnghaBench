
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ETH_ALEN ;
 int MAC_BUF_SIZE ;
 int _format_mac_addr (char*,int ,unsigned char const*,int ) ;

char *print_mac(char *buf, const unsigned char *addr)
{
 _format_mac_addr(buf, MAC_BUF_SIZE, addr, ETH_ALEN);
 return buf;
}
