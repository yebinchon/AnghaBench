
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int str ;
struct TYPE_3__ {int cfm_flags; char* cfm_type; int cfm_search_path; } ;
typedef TYPE_1__ cf_map_t ;


 int CFM_BROWSABLE_DIRS ;
 int CFM_BROWSABLE_DIRS_FULL ;
 int CFM_MOUNT_TYPE_AUTOFS ;
 int MAXPATHLEN ;
 int ROOT_MAP ;
 char const* get_full_path (char const*,int ,char*) ;
 scalar_t__ mapc_find (int ,char*,int *,int *) ;
 int mapc_repl_kv (scalar_t__,int ,int ) ;
 scalar_t__ root_map ;
 int xsnprintf (char*,int,char*,char const*,char const*) ;
 int xstrdup (char const*) ;
 int xstrlcat (char*,char const*,int) ;
 int xstrlcpy (char*,char const*,int) ;

void
root_newmap(const char *dir, const char *opts, const char *map, const cf_map_t *cfm)
{
  char str[MAXPATHLEN];




  if (!root_map)
    root_map = mapc_find(ROOT_MAP, "mapdefault", ((void*)0), ((void*)0));
  if (cfm) {
    if (map) {
      xsnprintf(str, sizeof(str),
  "cache:=mapdefault;type:=toplvl;mount_type:=%s;fs:=\"%s\"",
  cfm->cfm_flags & CFM_MOUNT_TYPE_AUTOFS ? "autofs" : "nfs",
  get_full_path(map, cfm->cfm_search_path, cfm->cfm_type));
      if (opts && opts[0] != '\0') {
 xstrlcat(str, ";", sizeof(str));
 xstrlcat(str, opts, sizeof(str));
      }
      if (cfm->cfm_flags & CFM_BROWSABLE_DIRS_FULL)
 xstrlcat(str, ";opts:=rw,fullybrowsable", sizeof(str));
      if (cfm->cfm_flags & CFM_BROWSABLE_DIRS)
 xstrlcat(str, ";opts:=rw,browsable", sizeof(str));
      if (cfm->cfm_type) {
 xstrlcat(str, ";maptype:=", sizeof(str));
 xstrlcat(str, cfm->cfm_type, sizeof(str));
      }
    } else {
      xstrlcpy(str, opts, sizeof(str));
    }
  } else {
    if (map)
      xsnprintf(str, sizeof(str),
  "cache:=mapdefault;type:=toplvl;fs:=\"%s\";%s",
  map, opts ? opts : "");
    else
      xstrlcpy(str, opts, sizeof(str));
  }
  mapc_repl_kv(root_map, xstrdup(dir), xstrdup(str));
}
