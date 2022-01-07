
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct se_device {int dummy; } ;



__attribute__((used)) static int spc_modesense_informational_exceptions(struct se_device *dev, u8 pc, unsigned char *p)
{
 p[0] = 0x1c;
 p[1] = 0x0a;


 if (pc == 1)
  goto out;

out:
 return 12;
}
