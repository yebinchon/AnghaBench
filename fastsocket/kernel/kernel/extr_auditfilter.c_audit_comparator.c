
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
 int BUG () ;

int audit_comparator(u32 left, u32 op, u32 right)
{
 switch (op) {
 case 133:
  return (left == right);
 case 128:
  return (left != right);
 case 129:
  return (left < right);
 case 130:
  return (left <= right);
 case 131:
  return (left > right);
 case 132:
  return (left >= right);
 case 135:
  return (left & right);
 case 134:
  return ((left & right) == right);
 default:
  BUG();
  return 0;
 }
}
