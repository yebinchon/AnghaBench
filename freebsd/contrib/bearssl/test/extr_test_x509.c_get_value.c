
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HT ;


 int EXIT_FAILURE ;
 char* HT_get (int *,char*) ;
 int exit (int ) ;
 int fprintf (int ,char*,char*,char*,long) ;
 int stderr ;

__attribute__((used)) static char *
get_value(char *objtype, HT *objdata, long linenum, char *name)
{
 char *value;

 value = HT_get(objdata, name);
 if (value == ((void*)0)) {
  fprintf(stderr,
   "missing property '%s' in section '%s' (line %ld)\n",
   name, objtype, linenum);
  exit(EXIT_FAILURE);
 }
 return value;
}
