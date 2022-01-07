
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int ncp_ioctl_need_write(unsigned int cmd)
{
 switch (cmd) {
 case 139:
 case 138:
 case 136:
 case 134:
 case 129:
 case 137:
 case 130:
  return 1;
 case 142:
 case 133:
 case 141:
 case 132:
 case 135:
 case 145:
 case 146:
 case 144:
 case 143:
 case 128:
 case 140:
 case 131:
  return 0;
 default:

  return 1;
 }
}
