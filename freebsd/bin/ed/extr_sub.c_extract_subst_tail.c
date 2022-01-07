
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ERR ;
 int GPR ;
 int GSG ;
 int STRTOL (long,char*) ;
 int * extract_subst_template () ;
 char* ibufp ;
 scalar_t__ rhbufi ;

int
extract_subst_tail(int *flagp, long *np)
{
 char delimiter;

 *flagp = *np = 0;
 if ((delimiter = *ibufp) == '\n') {
  rhbufi = 0;
  *flagp = GPR;
  return 0;
 } else if (extract_subst_template() == ((void*)0))
  return ERR;
 else if (*ibufp == '\n') {
  *flagp = GPR;
  return 0;
 } else if (*ibufp == delimiter)
  ibufp++;
 if ('1' <= *ibufp && *ibufp <= '9') {
  STRTOL(*np, ibufp);
  return 0;
 } else if (*ibufp == 'g') {
  ibufp++;
  *flagp = GSG;
  return 0;
 }
 return 0;
}
