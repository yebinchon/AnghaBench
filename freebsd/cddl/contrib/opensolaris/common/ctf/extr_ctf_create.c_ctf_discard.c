
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int dtd_type; } ;
struct TYPE_9__ {int ctf_flags; scalar_t__ ctf_dtoldid; scalar_t__ ctf_dtnextid; TYPE_2__ ctf_dtdefs; } ;
typedef TYPE_1__ ctf_file_t ;
typedef TYPE_2__ ctf_dtdef_t ;


 scalar_t__ CTF_TYPE_TO_INDEX (int ) ;
 int ECTF_RDONLY ;
 int LCTF_DIRTY ;
 int LCTF_RDWR ;
 int ctf_dtd_delete (TYPE_1__*,TYPE_2__*) ;
 TYPE_2__* ctf_list_prev (TYPE_2__*) ;
 int ctf_set_errno (TYPE_1__*,int ) ;

int
ctf_discard(ctf_file_t *fp)
{
 ctf_dtdef_t *dtd, *ntd;

 if (!(fp->ctf_flags & LCTF_RDWR))
  return (ctf_set_errno(fp, ECTF_RDONLY));

 if (!(fp->ctf_flags & LCTF_DIRTY))
  return (0);

 for (dtd = ctf_list_prev(&fp->ctf_dtdefs); dtd != ((void*)0); dtd = ntd) {
  ntd = ctf_list_prev(dtd);
  if (CTF_TYPE_TO_INDEX(dtd->dtd_type) <= fp->ctf_dtoldid)
   continue;

  ctf_dtd_delete(fp, dtd);
 }

 fp->ctf_dtnextid = fp->ctf_dtoldid + 1;
 fp->ctf_flags &= ~LCTF_DIRTY;

 return (0);
}
