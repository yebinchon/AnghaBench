
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GNode ;


 int Error (char*,char*) ;
 int TARGET ;
 int Targ_Precious (int *) ;
 char* Var_Value (int ,int *,char**) ;
 int eunlink (char*) ;
 int free (char*) ;
 int noExecute ;

__attribute__((used)) static void
CompatDeleteTarget(GNode *gn)
{
    if ((gn != ((void*)0)) && !Targ_Precious (gn)) {
 char *p1;
 char *file = Var_Value(TARGET, gn, &p1);

 if (!noExecute && eunlink(file) != -1) {
     Error("*** %s removed", file);
 }

 free(p1);
    }
}
