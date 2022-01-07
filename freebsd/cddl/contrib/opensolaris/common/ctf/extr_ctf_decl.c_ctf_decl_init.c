
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int* cd_order; int cd_qualp; int cd_ordp; char* cd_buf; char* cd_ptr; char* cd_end; } ;
typedef TYPE_1__ ctf_decl_t ;


 int CTF_PREC_BASE ;
 int CTF_PREC_MAX ;
 int bzero (TYPE_1__*,int) ;

void
ctf_decl_init(ctf_decl_t *cd, char *buf, size_t len)
{
 int i;

 bzero(cd, sizeof (ctf_decl_t));

 for (i = CTF_PREC_BASE; i < CTF_PREC_MAX; i++)
  cd->cd_order[i] = CTF_PREC_BASE - 1;

 cd->cd_qualp = CTF_PREC_BASE;
 cd->cd_ordp = CTF_PREC_BASE;

 cd->cd_buf = buf;
 cd->cd_ptr = buf;
 cd->cd_end = buf + len;
}
