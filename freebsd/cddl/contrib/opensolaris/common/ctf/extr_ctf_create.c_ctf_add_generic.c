
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef scalar_t__ uint_t ;
typedef scalar_t__ ctf_id_t ;
struct TYPE_11__ {int ctf_flags; int ctf_dtstrlen; scalar_t__ ctf_dtnextid; } ;
typedef TYPE_1__ ctf_file_t ;
struct TYPE_12__ {char* dtd_name; scalar_t__ dtd_type; } ;
typedef TYPE_2__ ctf_dtdef_t ;


 scalar_t__ CTF_ADD_NONROOT ;
 scalar_t__ CTF_ADD_ROOT ;
 scalar_t__ CTF_INDEX_TO_TYPE (scalar_t__,int) ;
 scalar_t__ CTF_MAX_TYPE ;
 int EAGAIN ;
 int ECTF_FULL ;
 int ECTF_RDONLY ;
 int EINVAL ;
 int LCTF_CHILD ;
 int LCTF_DIRTY ;
 int LCTF_RDWR ;
 int bzero (TYPE_2__*,int) ;
 TYPE_2__* ctf_alloc (int) ;
 int ctf_dtd_insert (TYPE_1__*,TYPE_2__*) ;
 int ctf_free (TYPE_2__*,int) ;
 scalar_t__ ctf_set_errno (TYPE_1__*,int ) ;
 char* ctf_strdup (char const*) ;
 scalar_t__ strlen (char*) ;

__attribute__((used)) static ctf_id_t
ctf_add_generic(ctf_file_t *fp, uint_t flag, const char *name, ctf_dtdef_t **rp)
{
 ctf_dtdef_t *dtd;
 ctf_id_t type;
 char *s = ((void*)0);

 if (flag != CTF_ADD_NONROOT && flag != CTF_ADD_ROOT)
  return (ctf_set_errno(fp, EINVAL));

 if (!(fp->ctf_flags & LCTF_RDWR))
  return (ctf_set_errno(fp, ECTF_RDONLY));

 if (CTF_INDEX_TO_TYPE(fp->ctf_dtnextid, 1) > CTF_MAX_TYPE)
  return (ctf_set_errno(fp, ECTF_FULL));

 if ((dtd = ctf_alloc(sizeof (ctf_dtdef_t))) == ((void*)0))
  return (ctf_set_errno(fp, EAGAIN));

 if (name != ((void*)0) && (s = ctf_strdup(name)) == ((void*)0)) {
  ctf_free(dtd, sizeof (ctf_dtdef_t));
  return (ctf_set_errno(fp, EAGAIN));
 }

 type = fp->ctf_dtnextid++;
 type = CTF_INDEX_TO_TYPE(type, (fp->ctf_flags & LCTF_CHILD));

 bzero(dtd, sizeof (ctf_dtdef_t));
 dtd->dtd_name = s;
 dtd->dtd_type = type;

 if (s != ((void*)0))
  fp->ctf_dtstrlen += strlen(s) + 1;

 ctf_dtd_insert(fp, dtd);
 fp->ctf_flags |= LCTF_DIRTY;

 *rp = dtd;
 return (type);
}
