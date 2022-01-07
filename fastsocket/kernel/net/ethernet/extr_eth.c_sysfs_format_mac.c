
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;


 scalar_t__ PAGE_SIZE ;
 size_t _format_mac_addr (char*,scalar_t__,unsigned char const*,int) ;
 scalar_t__ strlcpy (char*,char*,scalar_t__) ;

ssize_t sysfs_format_mac(char *buf, const unsigned char *addr, int len)
{
 size_t l;

 l = _format_mac_addr(buf, PAGE_SIZE, addr, len);
 l += strlcpy(buf + l, "\n", PAGE_SIZE - l);
 return ((ssize_t) l);
}
