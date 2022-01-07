
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int di_type; int di_ctfp; } ;
typedef TYPE_1__ dt_ident_t ;


 size_t ctf_type_size (int ,int ) ;

__attribute__((used)) static size_t
dt_idsize_type(dt_ident_t *idp)
{
 return (ctf_type_size(idp->di_ctfp, idp->di_type));
}
