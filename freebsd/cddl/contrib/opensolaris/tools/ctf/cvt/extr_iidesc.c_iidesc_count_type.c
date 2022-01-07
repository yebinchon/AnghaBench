
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ iitype_t ;
struct TYPE_2__ {scalar_t__ ii_type; } ;
typedef TYPE_1__ iidesc_t ;



int
iidesc_count_type(void *data, void *private)
{
 iidesc_t *ii = data;
 iitype_t match = (iitype_t)private;

 return (ii->ii_type == match);
}
