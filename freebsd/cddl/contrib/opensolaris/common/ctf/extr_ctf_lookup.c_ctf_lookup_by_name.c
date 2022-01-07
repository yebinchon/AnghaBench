
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {char* ctl_prefix; int ctl_hash; int ctl_len; } ;
typedef TYPE_1__ ctf_lookup_t ;
typedef scalar_t__ ctf_id_t ;
struct TYPE_10__ {scalar_t__ h_type; } ;
typedef TYPE_2__ ctf_helem_t ;
struct TYPE_11__ {scalar_t__* ctf_ptrtab; int ctf_flags; struct TYPE_11__* ctf_parent; TYPE_1__* ctf_lookups; } ;
typedef TYPE_3__ ctf_file_t ;


 scalar_t__ CTF_ERR ;
 scalar_t__ CTF_INDEX_TO_TYPE (scalar_t__,int) ;
 size_t CTF_TYPE_TO_INDEX (scalar_t__) ;
 int ECTF_NOTYPE ;
 int ECTF_SYNTAX ;
 int EINVAL ;
 int LCTF_CHILD ;
 TYPE_2__* ctf_hash_lookup (int ,TYPE_3__*,char const*,size_t) ;
 scalar_t__ ctf_set_errno (TYPE_3__*,int ) ;
 scalar_t__ ctf_type_resolve (TYPE_3__*,scalar_t__) ;
 scalar_t__ isqualifier (char const*,size_t) ;
 scalar_t__ isspace (char const) ;
 char* strchr (char const*,char) ;
 int strlen (char const*) ;
 scalar_t__ strncmp (char const*,char*,size_t) ;
 char* strpbrk (char const*,char const*) ;

ctf_id_t
ctf_lookup_by_name(ctf_file_t *fp, const char *name)
{
 static const char delimiters[] = " \t\n\r\v\f*";

 const ctf_lookup_t *lp;
 const ctf_helem_t *hp;
 const char *p, *q, *end;
 ctf_id_t type = 0;
 ctf_id_t ntype, ptype;

 if (name == ((void*)0))
  return (ctf_set_errno(fp, EINVAL));

 for (p = name, end = name + strlen(name); *p != '\0'; p = q) {
  while (isspace(*p))
   p++;

  if (p == end)
   break;

  if ((q = strpbrk(p + 1, delimiters)) == ((void*)0))
   q = end;

  if (*p == '*') {
   ntype = fp->ctf_ptrtab[CTF_TYPE_TO_INDEX(type)];
   if (ntype == 0) {
    ntype = ctf_type_resolve(fp, type);
    if (ntype == CTF_ERR || (ntype = fp->ctf_ptrtab[
        CTF_TYPE_TO_INDEX(ntype)]) == 0) {
     (void) ctf_set_errno(fp, ECTF_NOTYPE);
     goto err;
    }
   }

   type = CTF_INDEX_TO_TYPE(ntype,
       (fp->ctf_flags & LCTF_CHILD));

   q = p + 1;
   continue;
  }

  if (isqualifier(p, (size_t)(q - p)))
   continue;

  for (lp = fp->ctf_lookups; lp->ctl_prefix != ((void*)0); lp++) {
   if (lp->ctl_prefix[0] == '\0' ||
       strncmp(p, lp->ctl_prefix, (size_t)(q - p)) == 0) {
    for (p += lp->ctl_len; isspace(*p); p++)
     continue;

    if ((q = strchr(p, '*')) == ((void*)0))
     q = end;

    while (isspace(q[-1]))
     q--;

    if ((hp = ctf_hash_lookup(lp->ctl_hash, fp, p,
        (size_t)(q - p))) == ((void*)0)) {
     (void) ctf_set_errno(fp, ECTF_NOTYPE);
     goto err;
    }

    type = hp->h_type;
    break;
   }
  }

  if (lp->ctl_prefix == ((void*)0)) {
   (void) ctf_set_errno(fp, ECTF_NOTYPE);
   goto err;
  }
 }

 if (*p != '\0' || type == 0)
  return (ctf_set_errno(fp, ECTF_SYNTAX));

 return (type);

err:
 if (fp->ctf_parent != ((void*)0) &&
     (ptype = ctf_lookup_by_name(fp->ctf_parent, name)) != CTF_ERR)
  return (ptype);

 return (CTF_ERR);
}
