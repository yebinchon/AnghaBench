
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int time_t ;
struct timeval {int tv_sec; scalar_t__ tv_usec; } ;
struct TYPE_8__ {TYPE_1__* cfm; scalar_t__ map_data; } ;
typedef TYPE_2__ mnt_map ;
typedef int filter ;
struct TYPE_10__ {int ldap_base; } ;
struct TYPE_9__ {int * ldap; } ;
struct TYPE_7__ {int cfm_flags; } ;
typedef int LDAPMessage ;
typedef TYPE_3__ ALD ;


 int AMD_LDAP_ATTR ;
 int AMD_LDAP_FILTER ;
 int AMD_LDAP_RETRIES ;
 int CFM_SUN_MAP_SYNTAX ;
 int EIO ;
 int ENOENT ;

 int LDAP_SCOPE_SUBTREE ;

 int LDAP_TIMEOUT ;
 int MAXPATHLEN ;
 int XLOG_USER ;
 scalar_t__ amu_ldap_rebind (TYPE_3__*) ;
 int amu_ldap_unbind (int *) ;
 int dlog (char*,...) ;
 TYPE_4__ gopt ;
 int ldap_count_entries (int *,int *) ;
 int ldap_count_values (char**) ;
 int ldap_err2string (int) ;
 int * ldap_first_entry (int *,int *) ;
 char** ldap_get_values (int *,int *,int ) ;
 int ldap_msgfree (int *) ;
 int ldap_search_st (int *,int ,int ,char*,int ,int ,struct timeval*,int **) ;
 int ldap_value_free (char**) ;
 int plog (int ,char*,...) ;
 char* sun_entry2amd (char*,char*) ;
 int xsnprintf (char*,int,int ,char*,char*) ;
 char* xstrdup (char*) ;

int
amu_ldap_search(mnt_map *m, char *map, char *key, char **pval, time_t *ts)
{
  char **vals, filter[MAXPATHLEN], filter2[2 * MAXPATHLEN];
  char *f1, *f2;
  struct timeval tv;
  int i, err = 0, nvals = 0, nentries = 0;
  LDAPMessage *entry, *res = ((void*)0);
  ALD *a = (ALD *) (m->map_data);

  dlog("-> amu_ldap_search: map <%s>, key <%s>\n", map, key);

  tv.tv_sec = 2;
  tv.tv_usec = 0;
  if (a == ((void*)0)) {
    plog(XLOG_USER, "LDAP panic: no map data\n");
    return (EIO);
  }
  if (amu_ldap_rebind(a))
    return (ENOENT);

  xsnprintf(filter, sizeof(filter), AMD_LDAP_FILTER, map, key);

  f1 = filter; f2 = filter2;
  while (*f1) {
    if (*f1 == '*') {
      *f2++ = '\\'; *f2++ = '2'; *f2++ = 'a';
      f1++;
    } else {
      *f2++ = *f1++;
    }
  }
  *f2 = '\0';
  dlog("Search with filter: <%s>\n", filter2);
  for (i = 0; i < AMD_LDAP_RETRIES; i++) {
    err = ldap_search_st(a->ldap,
    gopt.ldap_base,
    LDAP_SCOPE_SUBTREE,
    filter2,
    0,
    0,
    &tv,
    &res);
    if (err == 128)
      break;
    if (res) {
      ldap_msgfree(res);
      res = ((void*)0);
    }
    plog(XLOG_USER, "LDAP search attempt %d failed: %s\n",
        i + 1, ldap_err2string(err));
    if (err != LDAP_TIMEOUT) {
      dlog("amu_ldap_search: unbinding...\n");
      amu_ldap_unbind(a->ldap);
      a->ldap = ((void*)0);
      if (amu_ldap_rebind(a))
        return (ENOENT);
    }
  }

  switch (err) {
  case 128:
    break;
  case 129:
    dlog("No object\n");
    if (res)
      ldap_msgfree(res);
    return (ENOENT);
  default:
    plog(XLOG_USER, "LDAP search failed: %s\n",
  ldap_err2string(err));
    if (res)
      ldap_msgfree(res);
    return (EIO);
  }

  nentries = ldap_count_entries(a->ldap, res);
  dlog("Search found %d entries\n", nentries);
  if (nentries == 0) {
    ldap_msgfree(res);
    return (ENOENT);
  }
  entry = ldap_first_entry(a->ldap, res);
  vals = ldap_get_values(a->ldap, entry, AMD_LDAP_ATTR);
  nvals = ldap_count_values(vals);
  if (nvals == 0) {
    plog(XLOG_USER, "Missing value for %s in map %s\n", key, map);
    ldap_value_free(vals);
    ldap_msgfree(res);
    return (EIO);
  }
  dlog("Map %s, %s => %s\n", map, key, vals[0]);
  if (vals[0]) {
    if (m->cfm && (m->cfm->cfm_flags & CFM_SUN_MAP_SYNTAX))
      *pval = sun_entry2amd(key, vals[0]);
    else
      *pval = xstrdup(vals[0]);
    err = 0;
  } else {
    plog(XLOG_USER, "Empty value for %s in map %s\n", key, map);
    err = ENOENT;
  }
  ldap_msgfree(res);
  ldap_value_free(vals);

  return (err);
}
