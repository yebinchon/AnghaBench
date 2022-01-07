
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nvlist_t ;


 int fprintf (int ,char*,...) ;
 char* gettext (char*) ;
 int nomem () ;
 scalar_t__ nvlist_add_string (int *,char*,char*) ;
 scalar_t__ nvlist_lookup_string (int *,char*,char**) ;
 int stderr ;
 char* strchr (char*,char) ;

__attribute__((used)) static int
parseprop(nvlist_t *props, char *propname)
{
 char *propval, *strval;

 if ((propval = strchr(propname, '=')) == ((void*)0)) {
  (void) fprintf(stderr, gettext("missing "
      "'=' for property=value argument\n"));
  return (-1);
 }
 *propval = '\0';
 propval++;
 if (nvlist_lookup_string(props, propname, &strval) == 0) {
  (void) fprintf(stderr, gettext("property '%s' "
      "specified multiple times\n"), propname);
  return (-1);
 }
 if (nvlist_add_string(props, propname, propval) != 0)
  nomem();
 return (0);
}
