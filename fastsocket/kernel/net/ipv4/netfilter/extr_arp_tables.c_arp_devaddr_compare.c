
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct arpt_devaddr_info {char const* addr; char const* mask; } ;


 int ARPT_DEV_ADDR_LEN_MAX ;

__attribute__((used)) static inline int arp_devaddr_compare(const struct arpt_devaddr_info *ap,
          const char *hdr_addr, int len)
{
 int i, ret;

 if (len > ARPT_DEV_ADDR_LEN_MAX)
  len = ARPT_DEV_ADDR_LEN_MAX;

 ret = 0;
 for (i = 0; i < len; i++)
  ret |= (hdr_addr[i] ^ ap->addr[i]) & ap->mask[i];

 return (ret != 0);
}
