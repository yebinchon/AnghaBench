
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct module {char** markers; int nmarkers; int name; } ;


 char** NOFAIL (char*) ;
 int asprintf (char**,char*,char const*,int ,char const*) ;
 char* realloc (char**,int) ;

__attribute__((used)) static void add_marker(struct module *mod, const char *name, const char *fmt)
{
 char *line = ((void*)0);
 asprintf(&line, "%s\t%s\t%s\n", name, mod->name, fmt);
 NOFAIL(line);

 mod->markers = NOFAIL(realloc(mod->markers, ((mod->nmarkers + 1) *
           sizeof mod->markers[0])));
 mod->markers[mod->nmarkers++] = line;
}
