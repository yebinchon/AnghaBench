
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct opt {char* name; char** optp; scalar_t__ sel_p; } ;


 scalar_t__ FSTREQ (char*,char*) ;
 int XLOG_USER ;
 char* opt (char**) ;
 struct opt* opt_fields ;
 int plog (int ,char*,char*,char*) ;
 char* strchr (char*,char) ;

__attribute__((used)) static int
split_opts(char *opts, char *mapkey)
{
  char *o = opts;
  char *f;




  for (f = opt(&o); *f; f = opt(&o)) {
    struct opt *op;
    char *eq = strchr(f, '=');
    char *opt = ((void*)0);

    if (!eq)
      continue;

    if (*(eq-1) == '!' ||
 eq[1] == '=' ||
 eq[1] == '!') {
      continue;
    }

    if (*(eq-1) == ':') {
      *(eq-1) = '\0';
    } else {

      eq[0] = '\0';
    }
    opt = eq + 1;




    for (op = opt_fields; op->name; op++) {



      if (FSTREQ(op->name, f)) {
 if (op->sel_p) {
   plog(XLOG_USER, "key %s: Can't assign to a selector (%s)",
        mapkey, op->name);
   return 0;
 }
 *op->optp = opt;
 break;
      }
    }

    if (!op->name)
      plog(XLOG_USER, "key %s: Unrecognized key/option \"%s\"", mapkey, f);
  }

  return 1;
}
