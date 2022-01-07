
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int CONV_OLD_CONVERT ;
 int LOOKUP_NORMAL ;
 int ocp_convert (int ,int ,int ,int ) ;

tree
cp_convert (tree type, tree expr)
{
  return ocp_convert (type, expr, CONV_OLD_CONVERT, LOOKUP_NORMAL);
}
