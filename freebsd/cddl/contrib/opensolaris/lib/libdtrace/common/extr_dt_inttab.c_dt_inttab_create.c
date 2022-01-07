
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint_t ;
typedef int dtrace_hdl_t ;
struct TYPE_4__ {int int_hashlen; int * int_hdl; int * int_hash; } ;
typedef TYPE_1__ dt_inttab_t ;


 int _dtrace_intbuckets ;
 int assert (int) ;
 int dt_free (int *,TYPE_1__*) ;
 void* dt_zalloc (int *,int) ;

dt_inttab_t *
dt_inttab_create(dtrace_hdl_t *dtp)
{
 uint_t len = _dtrace_intbuckets;
 dt_inttab_t *ip;

 assert((len & (len - 1)) == 0);

 if ((ip = dt_zalloc(dtp, sizeof (dt_inttab_t))) == ((void*)0) ||
     (ip->int_hash = dt_zalloc(dtp, sizeof (void *) * len)) == ((void*)0)) {
  dt_free(dtp, ip);
  return (((void*)0));
 }

 ip->int_hdl = dtp;
 ip->int_hashlen = len;

 return (ip);
}
