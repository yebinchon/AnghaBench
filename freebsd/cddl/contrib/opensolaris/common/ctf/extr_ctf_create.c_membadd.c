
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int ulong_t ;
typedef int ctf_id_t ;
struct TYPE_11__ {char* dmd_name; int dmd_value; int dmd_offset; int dmd_type; } ;
typedef TYPE_3__ ctf_dmdef_t ;
struct TYPE_12__ {TYPE_5__* ctb_file; TYPE_2__* ctb_dtd; } ;
typedef TYPE_4__ ctf_bundle_t ;
struct TYPE_13__ {int ctf_flags; int ctf_dtstrlen; } ;
struct TYPE_9__ {int dtu_members; } ;
struct TYPE_10__ {TYPE_1__ dtd_u; } ;


 int EAGAIN ;
 int LCTF_DIRTY ;
 TYPE_3__* ctf_alloc (int) ;
 int ctf_free (TYPE_3__*,int) ;
 int ctf_list_append (int *,TYPE_3__*) ;
 int ctf_set_errno (TYPE_5__*,int ) ;
 char* ctf_strdup (char const*) ;
 scalar_t__ strlen (char*) ;

__attribute__((used)) static int
membadd(const char *name, ctf_id_t type, ulong_t offset, void *arg)
{
 ctf_bundle_t *ctb = arg;
 ctf_dmdef_t *dmd;
 char *s = ((void*)0);

 if ((dmd = ctf_alloc(sizeof (ctf_dmdef_t))) == ((void*)0))
  return (ctf_set_errno(ctb->ctb_file, EAGAIN));

 if (name != ((void*)0) && (s = ctf_strdup(name)) == ((void*)0)) {
  ctf_free(dmd, sizeof (ctf_dmdef_t));
  return (ctf_set_errno(ctb->ctb_file, EAGAIN));
 }





 dmd->dmd_name = s;
 dmd->dmd_type = type;
 dmd->dmd_offset = offset;
 dmd->dmd_value = -1;

 ctf_list_append(&ctb->ctb_dtd->dtd_u.dtu_members, dmd);

 if (s != ((void*)0))
  ctb->ctb_file->ctf_dtstrlen += strlen(s) + 1;

 ctb->ctb_file->ctf_flags |= LCTF_DIRTY;
 return (0);
}
