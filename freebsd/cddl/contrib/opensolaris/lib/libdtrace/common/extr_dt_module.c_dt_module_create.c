
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef size_t uint_t ;
typedef scalar_t__ pid_t ;
struct TYPE_11__ {scalar_t__ dtc_ctfmodel; } ;
struct TYPE_12__ {size_t dt_modbuckets; int dt_macros; TYPE_1__ dt_conf; int dt_nmods; TYPE_3__** dt_mods; int dt_modlist; } ;
typedef TYPE_2__ dtrace_hdl_t ;
struct TYPE_13__ {char* dm_name; scalar_t__ dm_pid; int * dm_ops; struct TYPE_13__* dm_next; } ;
typedef TYPE_3__ dt_module_t ;
struct TYPE_14__ {scalar_t__ di_id; } ;
typedef TYPE_4__ dt_ident_t ;


 scalar_t__ CTF_MODEL_LP64 ;
 int bzero (TYPE_3__*,int) ;
 int dt_dprintf (char*,char*) ;
 TYPE_4__* dt_idhash_lookup (int ,char*) ;
 int dt_list_append (int *,TYPE_3__*) ;
 int dt_modops_32 ;
 int dt_modops_64 ;
 size_t dt_strtab_hash (char const*,int *) ;
 scalar_t__ errno ;
 TYPE_3__* malloc (int) ;
 scalar_t__ strcmp (char*,char const*) ;
 int strlcpy (char*,char const*,int) ;
 scalar_t__ strncmp (char*,char*,int) ;
 long strtol (char*,char**,int) ;

dt_module_t *
dt_module_create(dtrace_hdl_t *dtp, const char *name)
{
 long pid;
 char *eptr;
 dt_ident_t *idp;
 uint_t h = dt_strtab_hash(name, ((void*)0)) % dtp->dt_modbuckets;
 dt_module_t *dmp;

 for (dmp = dtp->dt_mods[h]; dmp != ((void*)0); dmp = dmp->dm_next) {
  if (strcmp(dmp->dm_name, name) == 0)
   return (dmp);
 }

 if ((dmp = malloc(sizeof (dt_module_t))) == ((void*)0))
  return (((void*)0));

 bzero(dmp, sizeof (dt_module_t));
 (void) strlcpy(dmp->dm_name, name, sizeof (dmp->dm_name));
 dt_list_append(&dtp->dt_modlist, dmp);
 dmp->dm_next = dtp->dt_mods[h];
 dtp->dt_mods[h] = dmp;
 dtp->dt_nmods++;

 if (dtp->dt_conf.dtc_ctfmodel == CTF_MODEL_LP64)
  dmp->dm_ops = &dt_modops_64;
 else
  dmp->dm_ops = &dt_modops_32;
 if (strncmp(dmp->dm_name, "pid", 3) == 0) {
  errno = 0;
  if (dmp->dm_name[3] == '\0') {
   idp = dt_idhash_lookup(dtp->dt_macros, "target");
   if (idp != ((void*)0) && idp->di_id != 0)
    dmp->dm_pid = idp->di_id;
  } else {
   pid = strtol(dmp->dm_name + 3, &eptr, 10);
   if (errno == 0 && *eptr == '\0')
    dmp->dm_pid = (pid_t)pid;
   else
    dt_dprintf("encountered malformed pid "
        "module: %s\n", dmp->dm_name);
  }
 }

 return (dmp);
}
