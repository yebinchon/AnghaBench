
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int QTY_CMP_PRI (int) ;

__attribute__((used)) static int
qty_compare (int q1, int q2)
{
  return QTY_CMP_PRI (q2) - QTY_CMP_PRI (q1);
}
