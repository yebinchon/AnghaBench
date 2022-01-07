
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int ctf_id_t ;
struct TYPE_6__ {int ctf_flags; int * ctf_ptrtab; } ;
typedef TYPE_1__ ctf_file_t ;


 int CTF_ERR ;
 int CTF_INDEX_TO_TYPE (int ,int) ;
 size_t CTF_TYPE_TO_INDEX (int ) ;
 int ECTF_NOTYPE ;
 int LCTF_CHILD ;
 int * ctf_lookup_by_id (TYPE_1__**,int ) ;
 int ctf_set_errno (TYPE_1__*,int ) ;
 int ctf_type_resolve (TYPE_1__*,int ) ;

ctf_id_t
ctf_type_pointer(ctf_file_t *fp, ctf_id_t type)
{
 ctf_file_t *ofp = fp;
 ctf_id_t ntype;

 if (ctf_lookup_by_id(&fp, type) == ((void*)0))
  return (CTF_ERR);

 if ((ntype = fp->ctf_ptrtab[CTF_TYPE_TO_INDEX(type)]) != 0)
  return (CTF_INDEX_TO_TYPE(ntype, (fp->ctf_flags & LCTF_CHILD)));

 if ((type = ctf_type_resolve(fp, type)) == CTF_ERR)
  return (ctf_set_errno(ofp, ECTF_NOTYPE));

 if (ctf_lookup_by_id(&fp, type) == ((void*)0))
  return (ctf_set_errno(ofp, ECTF_NOTYPE));

 if ((ntype = fp->ctf_ptrtab[CTF_TYPE_TO_INDEX(type)]) != 0)
  return (CTF_INDEX_TO_TYPE(ntype, (fp->ctf_flags & LCTF_CHILD)));

 return (ctf_set_errno(ofp, ECTF_NOTYPE));
}
