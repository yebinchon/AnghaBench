
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* name; } ;
typedef TYPE_1__ VAR ;


 int strlen (char const*) ;
 int termwidth ;
 TYPE_1__* var ;
 int xo_close_list (char*) ;
 int xo_emit (char*,...) ;
 int xo_finish () ;
 int xo_open_list (char*) ;

void
showkey(void)
{
 VAR *v;
 int i;
 const char *p, *sep;

 i = 0;
 sep = "";
 xo_open_list("key");
 for (v = var; *(p = v->name); ++v) {
  int len = strlen(p);
  if (termwidth && (i += len + 1) > termwidth) {
   i = len;
   sep = "\n";
  }
  xo_emit("{P:/%s}{l:key/%s}", sep, p);
  sep = " ";
 }
 xo_emit("\n");
 xo_close_list("key");
 xo_finish();
}
