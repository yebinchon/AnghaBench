
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum vs_opt { ____Placeholder_vs_opt } vs_opt ;





 int XLOG_USER ;
 int dlog (char*,char*) ;
 char* opt_no_scribble (char**) ;
 int plog (int ,char*,char*,...) ;
 char* strchr (char*,char) ;

char *
strip_selectors(char *opts, char *mapkey)
{





  char *o = opts;
  char *oo = opts;
  char *f;




  while (*(f = opt_no_scribble(&o))) {
    enum vs_opt vs_opt = 128;
    char *eq = strchr(f, '=');

    if (!eq || eq[1] == '\0' || eq == f) {



      plog(XLOG_USER, "key %s: No option or assignment in \"%s\"", mapkey, f);
      return o;
    }






    if (*(eq-1) == '!') {
      vs_opt = 129;
    } else if (*(eq-1) == ':') {
      vs_opt = 128;
    } else if (eq[1] == '=') {
      vs_opt = 130;
    } else if (eq[1] == '!') {
      vs_opt = 129;
    }
    switch (vs_opt) {
    case 130:
    case 129:

      plog(XLOG_USER, "skipping selector to \"%s\"", o);

      oo = o;
      break;

    case 128:

      dlog("found first assignment past selectors \"%s\"", o);
      return oo;
    }
  }


  return oo;
}
