
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int ctf_id_t ;
struct TYPE_10__ {int ctf_flags; int ctf_refcnt; } ;
typedef TYPE_1__ ctf_file_t ;
struct TYPE_11__ {scalar_t__ dtd_ref; } ;
typedef TYPE_2__ ctf_dtdef_t ;


 int CTF_ERR ;
 int ECTF_NOTDYN ;
 int ECTF_RDONLY ;
 int ECTF_REFERENCED ;
 int LCTF_DIRTY ;
 int LCTF_RDWR ;
 int ctf_dtd_delete (TYPE_1__*,TYPE_2__*) ;
 TYPE_2__* ctf_dtd_lookup (TYPE_1__*,int ) ;
 int * ctf_lookup_by_id (TYPE_1__**,int ) ;
 int ctf_set_errno (TYPE_1__*,int ) ;

int
ctf_delete_type(ctf_file_t *fp, ctf_id_t type)
{
 ctf_file_t *fpd;
 ctf_dtdef_t *dtd = ctf_dtd_lookup(fp, type);

 if (!(fp->ctf_flags & LCTF_RDWR))
  return (ctf_set_errno(fp, ECTF_RDONLY));






 fpd = fp;
 if (ctf_lookup_by_id(&fpd, type) == ((void*)0) &&
     ctf_dtd_lookup(fp, type) == ((void*)0))
  return (CTF_ERR);

 if (dtd == ((void*)0))
  return (ctf_set_errno(fp, ECTF_NOTDYN));

 if (dtd->dtd_ref != 0 || fp->ctf_refcnt > 1)
  return (ctf_set_errno(fp, ECTF_REFERENCED));

 ctf_dtd_delete(fp, dtd);
 fp->ctf_flags |= LCTF_DIRTY;
 return (0);
}
