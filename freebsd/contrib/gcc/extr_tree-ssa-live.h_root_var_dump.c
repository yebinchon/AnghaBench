
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int root_var_p ;
typedef int FILE ;


 int fprintf (int *,char*) ;
 int tpa_dump (int *,int ) ;

__attribute__((used)) static inline void
root_var_dump (FILE *f, root_var_p rv)
{
  fprintf (f, "\nRoot Var dump\n");
  tpa_dump (f, rv);
  fprintf (f, "\n");
}
