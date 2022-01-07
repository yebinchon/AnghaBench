
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int * td_iihash; int * td_layouthash; int * td_labels; int * td_fwdlist; void* td_nextid; void* td_curvgen; void* td_curemark; } ;
typedef TYPE_1__ tdata_t ;


 void* MAX (void*,void*) ;
 int hash_free (int *,int *,int *) ;
 int hash_merge (int *,int *) ;
 int list_concat (int **,int *) ;
 int slist_merge (int **,int *,int ) ;
 int tdata_build_hashes_common (TYPE_1__*,int *) ;
 int tdata_free (TYPE_1__*) ;
 int tdata_label_cmp ;

void
tdata_merge(tdata_t *td1, tdata_t *td2)
{
 td1->td_curemark = MAX(td1->td_curemark, td2->td_curemark);
 td1->td_curvgen = MAX(td1->td_curvgen, td2->td_curvgen);
 td1->td_nextid = MAX(td1->td_nextid, td2->td_nextid);

 hash_merge(td1->td_iihash, td2->td_iihash);


 tdata_build_hashes_common(td1, td2->td_iihash);

 list_concat(&td1->td_fwdlist, td2->td_fwdlist);
 td2->td_fwdlist = ((void*)0);

 slist_merge(&td1->td_labels, td2->td_labels,
     tdata_label_cmp);
 td2->td_labels = ((void*)0);



 hash_free(td2->td_layouthash, ((void*)0), ((void*)0));
 td2->td_layouthash = ((void*)0);

 hash_free(td2->td_iihash, ((void*)0), ((void*)0));
 td2->td_iihash = ((void*)0);

 tdata_free(td2);
}
