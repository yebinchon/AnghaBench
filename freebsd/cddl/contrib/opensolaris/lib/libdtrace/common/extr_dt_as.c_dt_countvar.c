
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

__attribute__((used)) static int
dt_countvar(dt_idhash_t *dhp, dt_ident_t *idp, void *data)
{
 size_t *np = data;

 if (idp->di_flags & (DT_IDFLG_DIFR | DT_IDFLG_DIFW))
  (*np)++;

 return (0);
}
