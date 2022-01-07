
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int TYPE_MAIN_VARIANT (int ) ;
 int comptypes (int ,int ) ;

int
c_types_compatible_p (tree x, tree y)
{
    return comptypes (TYPE_MAIN_VARIANT (x), TYPE_MAIN_VARIANT (y));
}
