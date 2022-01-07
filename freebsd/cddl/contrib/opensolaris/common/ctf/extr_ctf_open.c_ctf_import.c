
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ ctf_refcnt; scalar_t__ ctf_dmodel; struct TYPE_6__* ctf_parent; int ctf_flags; } ;
typedef TYPE_1__ ctf_file_t ;


 int ECTF_DMODEL ;
 int EINVAL ;
 int LCTF_CHILD ;
 int ctf_close (TYPE_1__*) ;
 int ctf_set_errno (TYPE_1__*,int ) ;

int
ctf_import(ctf_file_t *fp, ctf_file_t *pfp)
{
 if (fp == ((void*)0) || fp == pfp || (pfp != ((void*)0) && pfp->ctf_refcnt == 0))
  return (ctf_set_errno(fp, EINVAL));

 if (pfp != ((void*)0) && pfp->ctf_dmodel != fp->ctf_dmodel)
  return (ctf_set_errno(fp, ECTF_DMODEL));

 if (fp->ctf_parent != ((void*)0))
  ctf_close(fp->ctf_parent);

 if (pfp != ((void*)0)) {
  fp->ctf_flags |= LCTF_CHILD;
  pfp->ctf_refcnt++;
 }

 fp->ctf_parent = pfp;
 return (0);
}
