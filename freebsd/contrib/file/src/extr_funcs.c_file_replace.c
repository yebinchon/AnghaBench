
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* buf; } ;
struct magic_set {TYPE_1__ o; } ;
struct TYPE_5__ {size_t rm_so; scalar_t__ rm_eo; } ;
typedef TYPE_2__ regmatch_t ;
typedef int file_regex_t ;


 int REG_EXTENDED ;
 int file_printf (struct magic_set*,char*,char const*,char*) ;
 int file_regcomp (int *,char const*,int ) ;
 int file_regerror (int *,int,struct magic_set*) ;
 scalar_t__ file_regexec (int *,char*,int,TYPE_2__*,int ) ;
 int file_regfree (int *) ;

int
file_replace(struct magic_set *ms, const char *pat, const char *rep)
{
 file_regex_t rx;
 int rc, rv = -1;

 rc = file_regcomp(&rx, pat, REG_EXTENDED);
 if (rc) {
  file_regerror(&rx, rc, ms);
 } else {
  regmatch_t rm;
  int nm = 0;
  while (file_regexec(&rx, ms->o.buf, 1, &rm, 0) == 0) {
   ms->o.buf[rm.rm_so] = '\0';
   if (file_printf(ms, "%s%s", rep,
       rm.rm_eo != 0 ? ms->o.buf + rm.rm_eo : "") == -1)
    goto out;
   nm++;
  }
  rv = nm;
 }
out:
 file_regfree(&rx);
 return rv;
}
