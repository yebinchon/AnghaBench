
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int chrec_convert_1 (int ,int ,int ,int) ;

tree
chrec_convert (tree type, tree chrec, tree at_stmt)
{
  return chrec_convert_1 (type, chrec, at_stmt, 1);
}
