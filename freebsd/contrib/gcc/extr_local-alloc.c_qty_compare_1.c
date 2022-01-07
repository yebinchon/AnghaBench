
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int QTY_CMP_PRI (int) ;

__attribute__((used)) static int
qty_compare_1 (const void *q1p, const void *q2p)
{
  int q1 = *(const int *) q1p, q2 = *(const int *) q2p;
  int tem = QTY_CMP_PRI (q2) - QTY_CMP_PRI (q1);

  if (tem != 0)
    return tem;



  return q1 - q2;
}
