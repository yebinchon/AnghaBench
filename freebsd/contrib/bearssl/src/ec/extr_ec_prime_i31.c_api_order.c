
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t order_len; unsigned char const* order; } ;
typedef TYPE_1__ br_ec_curve_def ;


 TYPE_1__* id_to_curve_def (int) ;

__attribute__((used)) static const unsigned char *
api_order(int curve, size_t *len)
{
 const br_ec_curve_def *cd;

 cd = id_to_curve_def(curve);
 *len = cd->order_len;
 return cd->order;
}
