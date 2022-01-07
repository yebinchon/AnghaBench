
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct module {char* name; int gpl_compatible; struct module* next; } ;


 void* NOFAIL (int ) ;
 int malloc (int) ;
 int memset (struct module*,int ,int) ;
 struct module* modules ;
 scalar_t__ strcmp (char*,char*) ;
 int strdup (char*) ;
 char* strrchr (char*,char) ;

__attribute__((used)) static struct module *new_module(char *modname)
{
 struct module *mod;
 char *p, *s;

 mod = NOFAIL(malloc(sizeof(*mod)));
 memset(mod, 0, sizeof(*mod));
 p = NOFAIL(strdup(modname));


 s = strrchr(p, '.');
 if (s != ((void*)0))
  if (strcmp(s, ".o") == 0)
   *s = '\0';


 mod->name = p;
 mod->gpl_compatible = -1;
 mod->next = modules;
 modules = mod;

 return mod;
}
