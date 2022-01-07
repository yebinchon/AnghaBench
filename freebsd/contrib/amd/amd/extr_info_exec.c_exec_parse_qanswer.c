
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int time_t ;
typedef int qanswer ;
struct TYPE_6__ {TYPE_1__* cfm; } ;
typedef TYPE_2__ mnt_map ;
struct TYPE_7__ {int exec_map_timeout; } ;
struct TYPE_5__ {int cfm_flags; } ;


 int CFM_SUN_MAP_SYNTAX ;
 int ENOENT ;
 int INFO_MAX_LINE_LEN ;
 int XLOG_WARNING ;
 int close (int) ;
 int dlog (char*,char*,char*) ;
 scalar_t__ fgets_timed (char*,int,int,int ) ;
 TYPE_3__ gopt ;
 int isascii (unsigned char) ;
 int isspace (unsigned char) ;
 int plog (int ,char*,int,char*) ;
 scalar_t__ read_line (char*,int,int) ;
 char* strchr (char*,char) ;
 int strlen (char*) ;
 char* sun_entry2amd (char*,char*) ;
 char* xstrdup (char*) ;

__attribute__((used)) static int
exec_parse_qanswer(mnt_map *m, int fd, char *map, char *key, char **pval, time_t *tp)
{
  char qanswer[INFO_MAX_LINE_LEN], *dc = ((void*)0);
  int chuck = 0;
  int line_no = 0;

  while (read_line(qanswer, sizeof(qanswer), fd)) {
    char *cp;
    char *hash;
    int len = strlen(qanswer);
    line_no++;




    if (qanswer[len - 1] != '\n') {
      plog(XLOG_WARNING, "line %d in \"%s\" is too long", line_no, map);
      chuck = 1;
    } else {
      qanswer[len - 1] = '\0';
    }




    hash = strchr(qanswer, '#');
    if (hash)
      *hash = '\0';




    for (cp = qanswer; *cp && !isascii((unsigned char)*cp) && !isspace((unsigned char)*cp); cp++)
      ;;


    if (!*cp)
      goto again;




    if (m->cfm && (m->cfm->cfm_flags & CFM_SUN_MAP_SYNTAX))
      dc = sun_entry2amd(key, cp);
    else
      dc = xstrdup(cp);
    *pval = dc;
    dlog("%s returns %s", key, dc);

    close(fd);
    return 0;

  again:




    if (chuck) {
      while (fgets_timed(qanswer, sizeof(qanswer), fd, gopt.exec_map_timeout) &&
      !strchr(qanswer, '\n')) ;
      chuck = 0;
    }
  }

  return ENOENT;
}
