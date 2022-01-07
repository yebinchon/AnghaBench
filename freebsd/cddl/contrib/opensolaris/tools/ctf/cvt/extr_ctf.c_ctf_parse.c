
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;


struct TYPE_20__ {int t_id; } ;
typedef TYPE_1__ tdesc_t ;
struct TYPE_21__ {int td_nextid; int td_parlabel; } ;
typedef TYPE_2__ tdata_t ;
typedef int symit_data_t ;
struct TYPE_22__ {scalar_t__ cth_parlabel; scalar_t__ cth_stroff; } ;
typedef TYPE_3__ ctf_header_t ;
typedef scalar_t__ caddr_t ;


 int count_types (TYPE_3__*,scalar_t__) ;
 int free (TYPE_1__**) ;
 int resurrect_functions (TYPE_3__*,TYPE_2__*,TYPE_1__**,int,scalar_t__,int *) ;
 int resurrect_labels (TYPE_3__*,TYPE_2__*,scalar_t__,char*) ;
 int resurrect_objects (TYPE_3__*,TYPE_2__*,TYPE_1__**,int,scalar_t__,int *) ;
 int resurrect_types (TYPE_3__*,TYPE_2__*,TYPE_1__**,int,scalar_t__,int) ;
 TYPE_2__* tdata_new () ;
 void* xcalloc (int) ;
 int xstrdup (scalar_t__) ;

__attribute__((used)) static tdata_t *
ctf_parse(ctf_header_t *h, caddr_t buf, symit_data_t *si, char *label)
{
 tdata_t *td = tdata_new();
 tdesc_t **tdarr;
 int ntypes = count_types(h, buf);
 int idx, i;


 tdarr = xcalloc(sizeof (tdesc_t *) * (ntypes + 1));
 tdarr[0] = ((void*)0);
 for (i = 1; i <= ntypes; i++) {
  tdarr[i] = xcalloc(sizeof (tdesc_t));
  tdarr[i]->t_id = i;
 }

 td->td_parlabel = xstrdup(buf + h->cth_stroff + h->cth_parlabel);


 idx = resurrect_labels(h, td, buf, label);

 resurrect_objects(h, td, tdarr, ntypes + 1, buf, si);
 resurrect_functions(h, td, tdarr, ntypes + 1, buf, si);
 resurrect_types(h, td, tdarr, ntypes + 1, buf, idx);

 free(tdarr);

 td->td_nextid = ntypes + 1;

 return (td);
}
