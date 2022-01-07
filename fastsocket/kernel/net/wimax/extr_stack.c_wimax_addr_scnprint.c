
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ scnprintf (char*,size_t,char*,unsigned char,char) ;

__attribute__((used)) static
size_t wimax_addr_scnprint(char *addr_str, size_t addr_str_size,
      unsigned char *addr, size_t addr_len)
{
 unsigned cnt, total;
 for (total = cnt = 0; cnt < addr_len; cnt++)
  total += scnprintf(addr_str + total, addr_str_size - total,
       "%02x%c", addr[cnt],
       cnt == addr_len - 1 ? '\0' : ':');
 return total;
}
