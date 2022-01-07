
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cfile ;
 int fprintf (int ,char*,char const*) ;
 int hfile ;

__attribute__((used)) static void
init(const char *name)
{
 fprintf(hfile, "extern const char %s[];\n", name);
 fprintf(cfile, "const char %s[SYNBASE + CHAR_MAX + 1] = {\n", name);
}
