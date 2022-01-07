
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int unchar ;
struct tipc_media_addr {int dev_addr; } ;


 int sprintf (char*,char*,int *) ;

__attribute__((used)) static char *eth_addr2str(struct tipc_media_addr *a, char *str_buf, int str_size)
{
 unchar *addr = (unchar *)&a->dev_addr;

 if (str_size < 18)
  *str_buf = '\0';
 else
  sprintf(str_buf, "%pM", addr);
 return str_buf;
}
