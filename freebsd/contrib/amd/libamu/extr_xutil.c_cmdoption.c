
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct opt_tab {int flag; scalar_t__ opt; } ;


 scalar_t__ STREQ (char*,scalar_t__) ;
 int XLOG_ERROR ;
 int plog (int ,char*,char*) ;
 char* strchr (char*,char) ;

int
cmdoption(char *s, struct opt_tab *optb, u_int *flags)
{
  char *p = s;
  int errs = 0;

  while (p && *p) {
    int neg;
    char *opt;
    struct opt_tab *dp, *dpn = ((void*)0);

    s = p;
    p = strchr(p, ',');
    if (p)
      *p = '\0';


    if (s[0] == 'n' && s[1] == 'o') {
      opt = s + 2;
      neg = 1;
    } else {
      opt = s;
      neg = 0;
    }







    for (dp = optb; dp->opt; dp++) {
      if (STREQ(opt, dp->opt))
 break;
      if (opt != s && !dpn && STREQ(s, dp->opt))
 dpn = dp;
    }

    if (dp->opt || dpn) {
      if (!dp->opt) {
 dp = dpn;
 neg = !neg;
      }
      if (neg)
 *flags &= ~dp->flag;
      else
 *flags |= dp->flag;
    } else {




      plog(XLOG_ERROR, "option \"%s\" not recognized", s);
      errs++;
    }




    if (p)
      *p++ = ',';
  }

  return errs;
}
