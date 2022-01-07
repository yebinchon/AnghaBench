
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int
madvise_behavior_valid(int behavior)
{
 switch (behavior) {
 case 140:
 case 138:
 case 133:
 case 130:
 case 132:
 case 131:
 case 128:
 case 137:
 case 139:
 case 141:
  return 1;

 default:
  return 0;
 }
}
