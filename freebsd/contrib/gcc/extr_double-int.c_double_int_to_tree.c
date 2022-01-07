
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int tree ;
struct TYPE_5__ {int high; int low; } ;
typedef TYPE_1__ double_int ;


 int TYPE_PRECISION (int ) ;
 int TYPE_UNSIGNED (int ) ;
 int build_int_cst_wide (int ,int ,int ) ;
 TYPE_1__ double_int_ext (TYPE_1__,int ,int ) ;

tree
double_int_to_tree (tree type, double_int cst)
{
  cst = double_int_ext (cst, TYPE_PRECISION (type), TYPE_UNSIGNED (type));

  return build_int_cst_wide (type, cst.low, cst.high);
}
