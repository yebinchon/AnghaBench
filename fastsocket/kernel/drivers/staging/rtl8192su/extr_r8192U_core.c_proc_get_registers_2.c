
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
typedef int off_t ;


 int read_nic_byte (struct net_device*,int) ;
 scalar_t__ snprintf (char*,int,char*,...) ;

__attribute__((used)) static int proc_get_registers_2(char *page, char **start,
     off_t offset, int count,
     int *eof, void *data)
{
 struct net_device *dev = data;


 int len = 0;
 int i,n,page0;

 int max=0xff;
 page0 = 0x200;


  len += snprintf(page + len, count - len,
    "\n####################page %x##################\n ", (page0>>8));
  for(n=0;n<=max;)
  {
   len += snprintf(page + len, count - len,
     "\nD:  %2x > ",n);
   for(i=0;i<16 && n<=max;i++,n++)
    len += snprintf(page + len, count - len,
      "%2.2x ",read_nic_byte(dev,(page0|n)));
  }
 len += snprintf(page + len, count - len,"\n");
 *eof = 1;
 return len;

}
