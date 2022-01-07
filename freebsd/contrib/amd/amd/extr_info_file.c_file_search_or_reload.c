
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {TYPE_1__* cfm; } ;
typedef TYPE_2__ mnt_map ;
typedef int key_val ;
struct TYPE_7__ {int cfm_flags; } ;
typedef int FILE ;


 int CFM_SUN_MAP_SYNTAX ;
 int ENOENT ;
 int INFO_MAX_LINE_LEN ;
 scalar_t__ STREQ (char*,char*) ;
 int XLOG_USER ;
 int XLOG_WARNING ;
 int dlog (char*,char*,char*) ;
 scalar_t__ fgets (char*,int,int *) ;
 scalar_t__ file_read_line (char*,int,int *) ;
 scalar_t__ isascii (unsigned char) ;
 scalar_t__ isspace (unsigned char) ;
 int plog (int ,char*,...) ;
 char* strchr (char*,char) ;
 int strlen (char*) ;
 void stub1 (TYPE_2__*,char*,char*) ;
 char* sun_entry2amd (char*,char*) ;
 char* xstrdup (char*) ;

__attribute__((used)) static int
file_search_or_reload(mnt_map *m,
        FILE *fp,
        char *map,
        char *key,
        char **val,
        void (*fn) (mnt_map *m, char *, char *))
{
  char key_val[INFO_MAX_LINE_LEN];
  int chuck = 0;
  int line_no = 0;

  while (file_read_line(key_val, sizeof(key_val), fp)) {
    char *kp;
    char *cp;
    char *hash;
    int len = strlen(key_val);
    line_no++;




    if (key_val[len - 1] != '\n') {
      plog(XLOG_WARNING, "line %d in \"%s\" is too long", line_no, map);
      chuck = 1;
    } else {
      key_val[len - 1] = '\0';
    }




    hash = strchr(key_val, '#');
    if (hash)
      *hash = '\0';




    for (kp = key_val; *kp && isascii((unsigned char)*kp) && isspace((unsigned char)*kp); kp++) ;




    if (!*kp)
      goto again;




    for (cp = kp; *cp && (!isascii((unsigned char)*cp) || !isspace((unsigned char)*cp)); cp++) ;




    if (*cp)
      *cp++ = '\0';

    if (fn || (*key == *kp && STREQ(key, kp))) {
      while (*cp && isascii((unsigned char)*cp) && isspace((unsigned char)*cp))
 cp++;
      if (*cp) {



 char *dc;

 if (m->cfm && (m->cfm->cfm_flags & CFM_SUN_MAP_SYNTAX))
   dc = sun_entry2amd(kp, cp);
 else
   dc = xstrdup(cp);
 if (fn) {
   (*fn) (m, xstrdup(kp), dc);
 } else {
   *val = dc;
   dlog("%s returns %s", key, dc);
 }
 if (!fn)
   return 0;
      } else {
 plog(XLOG_USER, "%s: line %d has no value field", map, line_no);
      }
    }

  again:




    if (chuck) {
      while (fgets(key_val, sizeof(key_val), fp) &&
      !strchr(key_val, '\n')) ;
      chuck = 0;
    }
  }

  return fn ? 0 : ENOENT;
}
