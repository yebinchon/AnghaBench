
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct utsname {int release; } ;
struct symbol {int flags; int type; } ;


 int SYMBOL_AUTO ;
 int S_STRING ;
 int sym_add_default (struct symbol*,int ) ;
 struct symbol* sym_lookup (char*,int ) ;
 int uname (struct utsname*) ;

void sym_init(void)
{
 struct symbol *sym;
 struct utsname uts;
 static bool inited = 0;

 if (inited)
  return;
 inited = 1;

 uname(&uts);

 sym = sym_lookup("UNAME_RELEASE", 0);
 sym->type = S_STRING;
 sym->flags |= SYMBOL_AUTO;
 sym_add_default(sym, uts.release);
}
