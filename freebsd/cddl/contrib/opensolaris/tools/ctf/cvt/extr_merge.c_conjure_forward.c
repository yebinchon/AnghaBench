
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int tdesc_t ;
struct TYPE_5__ {TYPE_1__* md_tgt; } ;
typedef TYPE_2__ merge_cb_data_t ;
struct TYPE_4__ {int td_fwdlist; } ;


 int * conjure_template (int *,int) ;
 int list_add (int *,int *) ;

__attribute__((used)) static tdesc_t *
conjure_forward(tdesc_t *old, int newselfid, merge_cb_data_t *mcd)
{
 tdesc_t *new = conjure_template(old, newselfid);

 list_add(&mcd->md_tgt->td_fwdlist, new);

 return (new);
}
