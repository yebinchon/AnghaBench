
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zfs_deleg_who_type_t ;
typedef int uid_t ;
struct passwd {int pw_uid; } ;
struct group {int gr_gid; } ;
struct allow_opts {char const* who; int perms; int descend; int local; scalar_t__ group; scalar_t__ user; scalar_t__ everyone; scalar_t__ create; scalar_t__ set; } ;
typedef int nvlist_t ;
typedef int boolean_t ;


 int B_TRUE ;
 int NV_UNIQUE_NAME ;
 int ZFS_DELEG_CREATE ;
 int ZFS_DELEG_EVERYONE ;
 int ZFS_DELEG_GROUP ;
 int ZFS_DELEG_NAMED_SET ;
 int ZFS_DELEG_USER ;
 int ZFS_DELEG_WHO_UNKNOWN ;
 int allow_usage (int ,int ,char*) ;
 struct group* getgrgid (int) ;
 struct group* getgrnam (char*) ;
 struct passwd* getpwnam (char*) ;
 struct passwd* getpwuid (int) ;
 char* gettext (char*) ;
 int nomem () ;
 scalar_t__ nvlist_alloc (int **,int ,int ) ;
 int snprintf (char*,int,char*,char*) ;
 int sprintf (char*,char*,int) ;
 int store_allow_perm (int ,int ,int ,char const*,int ,int *) ;
 char* strchr (char*,char) ;
 int strlen (char*) ;
 scalar_t__ strtol (char*,char**,int ) ;

__attribute__((used)) static int
construct_fsacl_list(boolean_t un, struct allow_opts *opts, nvlist_t **nvlp)
{
 if (nvlist_alloc(nvlp, NV_UNIQUE_NAME, 0) != 0)
  nomem();

 if (opts->set) {
  store_allow_perm(ZFS_DELEG_NAMED_SET, opts->local,
      opts->descend, opts->who, opts->perms, *nvlp);
 } else if (opts->create) {
  store_allow_perm(ZFS_DELEG_CREATE, opts->local,
      opts->descend, ((void*)0), opts->perms, *nvlp);
 } else if (opts->everyone) {
  store_allow_perm(ZFS_DELEG_EVERYONE, opts->local,
      opts->descend, ((void*)0), opts->perms, *nvlp);
 } else {
  char *curr = opts->who;
  char *end = curr + strlen(curr);

  while (curr < end) {
   const char *who;
   zfs_deleg_who_type_t who_type = ZFS_DELEG_WHO_UNKNOWN;
   char *endch;
   char *delim = strchr(curr, ',');
   char errbuf[256];
   char id[64];
   struct passwd *p = ((void*)0);
   struct group *g = ((void*)0);

   uid_t rid;
   if (delim == ((void*)0))
    delim = end;
   else
    *delim = '\0';

   rid = (uid_t)strtol(curr, &endch, 0);
   if (opts->user) {
    who_type = ZFS_DELEG_USER;
    if (*endch != '\0')
     p = getpwnam(curr);
    else
     p = getpwuid(rid);

    if (p != ((void*)0))
     rid = p->pw_uid;
    else {
     (void) snprintf(errbuf, 256, gettext(
         "invalid user %s"), curr);
     allow_usage(un, B_TRUE, errbuf);
    }
   } else if (opts->group) {
    who_type = ZFS_DELEG_GROUP;
    if (*endch != '\0')
     g = getgrnam(curr);
    else
     g = getgrgid(rid);

    if (g != ((void*)0))
     rid = g->gr_gid;
    else {
     (void) snprintf(errbuf, 256, gettext(
         "invalid group %s"), curr);
     allow_usage(un, B_TRUE, errbuf);
    }
   } else {
    if (*endch != '\0') {
     p = getpwnam(curr);
    } else {
     p = getpwuid(rid);
    }

    if (p == ((void*)0)) {
     if (*endch != '\0') {
      g = getgrnam(curr);
     } else {
      g = getgrgid(rid);
     }
    }

    if (p != ((void*)0)) {
     who_type = ZFS_DELEG_USER;
     rid = p->pw_uid;
    } else if (g != ((void*)0)) {
     who_type = ZFS_DELEG_GROUP;
     rid = g->gr_gid;
    } else {
     (void) snprintf(errbuf, 256, gettext(
         "invalid user/group %s"), curr);
     allow_usage(un, B_TRUE, errbuf);
    }
   }

   (void) sprintf(id, "%u", rid);
   who = id;

   store_allow_perm(who_type, opts->local,
       opts->descend, who, opts->perms, *nvlp);
   curr = delim + 1;
  }
 }

 return (0);
}
