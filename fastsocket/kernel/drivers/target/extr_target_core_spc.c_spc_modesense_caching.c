
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct se_device {int dummy; } ;


 scalar_t__ spc_check_dev_wce (struct se_device*) ;

__attribute__((used)) static int spc_modesense_caching(struct se_device *dev, u8 pc, u8 *p)
{
 p[0] = 0x08;
 p[1] = 0x12;


 if (pc == 1)
  goto out;

 if (spc_check_dev_wce(dev))
  p[2] = 0x04;
 p[12] = 0x20;

out:
 return 20;
}
