
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int tmpdesc ;
struct TYPE_6__ {int td_iihash; } ;
typedef TYPE_1__ tdata_t ;
struct TYPE_7__ {int ii_name; } ;
typedef TYPE_2__ iidesc_t ;


 int bzero (TYPE_2__*,int) ;
 int free (int ) ;
 int hash_match (int ,TYPE_2__*,int (*) (void*,void*),void*) ;
 int xstrdup (char const*) ;

void
iter_iidescs_by_name(tdata_t *td, char const *name,
    int (*func)(void *, void *), void *data)
{
 iidesc_t tmpdesc;
 bzero(&tmpdesc, sizeof(tmpdesc));
 tmpdesc.ii_name = xstrdup(name);
 (void) hash_match(td->td_iihash, &tmpdesc, func, data);
 free(tmpdesc.ii_name);
}
