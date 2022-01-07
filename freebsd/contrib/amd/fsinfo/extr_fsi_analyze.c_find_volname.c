
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dict_ent ;


 int XFREE (char*) ;
 int * dict_locate (int ,char*) ;
 int dict_of_volnames ;
 int fsi_log (char*,char*) ;
 char* strrchr (char*,char) ;
 char* xstrdup (char*) ;

__attribute__((used)) static dict_ent *
find_volname(char *nn)
{
  dict_ent *de;
  char *p = xstrdup(nn);
  char *q;

  do {
    fsi_log("Searching for volname %s", p);
    de = dict_locate(dict_of_volnames, p);
    q = strrchr(p, '/');
    if (q)
      *q = '\0';
  } while (!de && q);

  XFREE(p);
  return de;
}
