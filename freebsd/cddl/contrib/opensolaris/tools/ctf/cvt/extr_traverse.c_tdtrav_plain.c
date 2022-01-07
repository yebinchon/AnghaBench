
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int tdtrav_data_t ;
struct TYPE_3__ {int t_tdesc; } ;
typedef TYPE_1__ tdesc_t ;


 int tdtraverse (int ,int *,int *) ;

__attribute__((used)) static int
tdtrav_plain(tdesc_t *this, tdtrav_data_t *tdtd)
{
 return (tdtraverse(this->t_tdesc, &this->t_tdesc, tdtd));
}
