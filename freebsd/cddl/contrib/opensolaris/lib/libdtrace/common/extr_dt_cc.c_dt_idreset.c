
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int dt_idhash_t ;
struct TYPE_3__ {int di_flags; } ;
typedef TYPE_1__ dt_ident_t ;


 int DT_IDFLG_DIFR ;
 int DT_IDFLG_DIFW ;
 int DT_IDFLG_MOD ;
 int DT_IDFLG_REF ;

__attribute__((used)) static int
dt_idreset(dt_idhash_t *dhp, dt_ident_t *idp, void *ignored)
{
 idp->di_flags &= ~(DT_IDFLG_REF | DT_IDFLG_MOD |
     DT_IDFLG_DIFR | DT_IDFLG_DIFW);
 return (0);
}
