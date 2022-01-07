
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ar_hdr {int AR_DATE; } ;
typedef int GNode ;
typedef int FILE ;


 int ARCHIVE ;
 int * ArchFindMember (int ,int ,struct ar_hdr*,char*) ;
 int MEMBER ;
 int Var_Value (int ,int *,char**) ;
 int fclose (int *) ;
 int free (char*) ;
 int fwrite (char*,int,int,int *) ;
 scalar_t__ now ;
 int snprintf (int ,int,char*,long) ;

void
Arch_Touch(GNode *gn)
{
    FILE * arch;
    struct ar_hdr arh;
    char *p1, *p2;

    arch = ArchFindMember(Var_Value(ARCHIVE, gn, &p1),
     Var_Value(MEMBER, gn, &p2),
     &arh, "r+");

    free(p1);
    free(p2);

    snprintf(arh.AR_DATE, sizeof(arh.AR_DATE), "%-12ld", (long) now);

    if (arch != ((void*)0)) {
 (void)fwrite((char *)&arh, sizeof(struct ar_hdr), 1, arch);
 fclose(arch);
    }
}
