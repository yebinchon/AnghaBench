
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int ctf_type_t ;
typedef scalar_t__ ctf_id_t ;
struct TYPE_5__ {int ctf_flags; scalar_t__ ctf_typemax; struct TYPE_5__* ctf_parent; } ;
typedef TYPE_1__ ctf_file_t ;


 scalar_t__ CTF_TYPE_ISPARENT (scalar_t__) ;
 scalar_t__ CTF_TYPE_TO_INDEX (scalar_t__) ;
 int ECTF_BADID ;
 int ECTF_NOPARENT ;
 int LCTF_CHILD ;
 int const* LCTF_INDEX_TO_TYPEPTR (TYPE_1__*,scalar_t__) ;
 int ctf_set_errno (TYPE_1__*,int ) ;

const ctf_type_t *
ctf_lookup_by_id(ctf_file_t **fpp, ctf_id_t type)
{
 ctf_file_t *fp = *fpp;

 if ((fp->ctf_flags & LCTF_CHILD) && CTF_TYPE_ISPARENT(type) &&
     (fp = fp->ctf_parent) == ((void*)0)) {
  (void) ctf_set_errno(*fpp, ECTF_NOPARENT);
  return (((void*)0));
 }

 type = CTF_TYPE_TO_INDEX(type);
 if (type > 0 && type <= fp->ctf_typemax) {
  *fpp = fp;
  return (LCTF_INDEX_TO_TYPEPTR(fp, type));
 }

 (void) ctf_set_errno(fp, ECTF_BADID);
 return (((void*)0));
}
