
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int t_id; } ;
typedef TYPE_1__ tdesc_t ;
struct TYPE_6__ {int md_tdtba; int md_ta; } ;
typedef TYPE_2__ merge_cb_data_t ;


 int add_tdesc (TYPE_1__*,int,TYPE_2__*) ;
 int assert (int) ;
 int get_mapping (int ,int ) ;
 int hash_remove (int ,void*) ;

__attribute__((used)) static int
add_tdtba_cb(void *data, void *arg)
{
 tdesc_t *tdp = data;
 merge_cb_data_t *mcd = arg;
 int newid;
 int rc;

 newid = get_mapping(mcd->md_ta, tdp->t_id);
 assert(newid != -1);

 if ((rc = add_tdesc(tdp, newid, mcd)))
  hash_remove(mcd->md_tdtba, (void *)tdp);

 return (rc);
}
