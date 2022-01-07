
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t const uint_t ;
struct TYPE_3__ {int di_flags; scalar_t__ di_kind; } ;
typedef TYPE_1__ dt_ident_t ;
 scalar_t__ DT_IDENT_ARRAY ;
 int DT_IDFLG_LOCAL ;
 int DT_IDFLG_TLS ;

__attribute__((used)) static uint_t
dt_cg_stvar(const dt_ident_t *idp)
{
 static const uint_t aops[] = { 132, 129, 133 };
 static const uint_t sops[] = { 131, 128, 130 };

 uint_t i = (((idp->di_flags & DT_IDFLG_LOCAL) != 0) << 1) |
     ((idp->di_flags & DT_IDFLG_TLS) != 0);

 return (idp->di_kind == DT_IDENT_ARRAY ? aops[i] : sops[i]);
}
