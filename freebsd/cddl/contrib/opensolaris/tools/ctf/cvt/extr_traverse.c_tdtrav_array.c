
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int tdtrav_data_t ;
struct TYPE_4__ {TYPE_2__* t_ardef; } ;
typedef TYPE_1__ tdesc_t ;
struct TYPE_5__ {int ad_idxtype; int ad_contents; } ;
typedef TYPE_2__ ardef_t ;


 int tdtraverse (int ,int *,int *) ;

__attribute__((used)) static int
tdtrav_array(tdesc_t *this, tdtrav_data_t *tdtd)
{
 ardef_t *ardef = this->t_ardef;
 int rc;

 if ((rc = tdtraverse(ardef->ad_contents, &ardef->ad_contents,
     tdtd)) < 0)
  return (rc);

 return (tdtraverse(ardef->ad_idxtype, &ardef->ad_idxtype, tdtd));
}
