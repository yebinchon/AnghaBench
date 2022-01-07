
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int type_var_p ;
typedef int FILE ;


 int fprintf (int *,char*) ;
 int tpa_dump (int *,int ) ;

__attribute__((used)) static inline void
type_var_dump (FILE *f, type_var_p tv)
{
  fprintf (f, "\nType Var dump\n");
  tpa_dump (f, tv);
  fprintf (f, "\n");
}
