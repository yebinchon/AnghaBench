
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cfile ;
 int fprintf (int ,char*,char const*,char const*) ;

__attribute__((used)) static void
add_one(const char *key, const char *type)
{
 fprintf(cfile, "\t[SYNBASE + %s] = %s,\n", key, type);
}
