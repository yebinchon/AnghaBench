
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int quotactl_cmd_write(int cmd)
{
 switch (cmd) {
 case 133:
 case 132:
 case 131:
 case 130:
 case 129:
 case 128:
  return 0;
 }
 return 1;
}
