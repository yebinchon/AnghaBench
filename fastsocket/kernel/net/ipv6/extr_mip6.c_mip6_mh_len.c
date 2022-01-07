
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int mip6_mh_len(int type)
{
 int len = 0;

 switch (type) {
 case 133:
  len = 0;
  break;
 case 128:
 case 130:
 case 132:
 case 135:
  len = 1;
  break;
 case 129:
 case 131:
 case 134:
  len = 2;
  break;
 }
 return len;
}
