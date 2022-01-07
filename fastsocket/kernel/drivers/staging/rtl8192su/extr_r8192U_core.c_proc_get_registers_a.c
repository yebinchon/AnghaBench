
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
typedef int off_t ;


 int bMaskDWord ;
 int rtl8192_QueryBBReg (struct net_device*,int,int ) ;
 scalar_t__ snprintf (char*,int,char*,...) ;

__attribute__((used)) static int proc_get_registers_a(char *page, char **start,
     off_t offset, int count,
     int *eof, void *data)
{
 struct net_device *dev = data;


 int len = 0;
 int i,n,page0;

 int max=0xff;
 page0 = 0xa00;


    len += snprintf(page + len, count - len,
    "\n####################page %x##################\n ", (page0>>8));
  for(n=0;n<=max;)
  {
   len += snprintf(page + len, count - len, "\nD:  %2x > ",n);
   for(i=0;i<4 && n<=max;n+=4,i++)
    len += snprintf(page + len, count - len,
      "%8.8x ",rtl8192_QueryBBReg(dev,(page0|n), bMaskDWord));
  }
 len += snprintf(page + len, count - len,"\n");
 *eof = 1;
 return len;
}
