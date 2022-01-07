
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef size_t ulong_t ;
struct TYPE_6__ {int ctf_dthashlen; int ctf_dtdefs; TYPE_2__** ctf_dthash; } ;
typedef TYPE_1__ ctf_file_t ;
struct TYPE_7__ {int dtd_type; struct TYPE_7__* dtd_hash; } ;
typedef TYPE_2__ ctf_dtdef_t ;


 int ctf_list_append (int *,TYPE_2__*) ;

void
ctf_dtd_insert(ctf_file_t *fp, ctf_dtdef_t *dtd)
{
 ulong_t h = dtd->dtd_type & (fp->ctf_dthashlen - 1);

 dtd->dtd_hash = fp->ctf_dthash[h];
 fp->ctf_dthash[h] = dtd;
 ctf_list_append(&fp->ctf_dtdefs, dtd);
}
