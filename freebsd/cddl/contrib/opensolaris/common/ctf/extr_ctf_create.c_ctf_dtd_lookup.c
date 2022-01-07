
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t ulong_t ;
typedef int ctf_id_t ;
struct TYPE_5__ {int ctf_dthashlen; TYPE_2__** ctf_dthash; } ;
typedef TYPE_1__ ctf_file_t ;
struct TYPE_6__ {int dtd_type; struct TYPE_6__* dtd_hash; } ;
typedef TYPE_2__ ctf_dtdef_t ;



ctf_dtdef_t *
ctf_dtd_lookup(ctf_file_t *fp, ctf_id_t type)
{
 ulong_t h = type & (fp->ctf_dthashlen - 1);
 ctf_dtdef_t *dtd;

 if (fp->ctf_dthash == ((void*)0))
  return (((void*)0));

 for (dtd = fp->ctf_dthash[h]; dtd != ((void*)0); dtd = dtd->dtd_hash) {
  if (dtd->dtd_type == type)
   break;
 }

 return (dtd);
}
