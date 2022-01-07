
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 char* dialog_version () ;
 int fprintf (int *,char*,char*) ;

__attribute__((used)) static void
PrintVersion(FILE *fp)
{
    fprintf(fp, "Version: %s\n", dialog_version());
}
