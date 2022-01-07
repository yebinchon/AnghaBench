
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int failmsg ;
typedef int FILE ;


 int ATF_REQUIRE (int ) ;
 int atf_tc_fail (char*,char*) ;
 int build_check_c_o (char*) ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int fprintf (int *,char*,char const*) ;
 int snprintf (char*,int,char*,char const*) ;

void
header_check(const char *hdrname)
{
    FILE *srcfile;
    char failmsg[128];

    srcfile = fopen("test.c", "w");
    ATF_REQUIRE(srcfile != ((void*)0));
    fprintf(srcfile, "#include <%s>\n", hdrname);
    fclose(srcfile);

    snprintf(failmsg, sizeof(failmsg),
             "Header check failed; %s is not self-contained", hdrname);

    if (!build_check_c_o("test.c"))
        atf_tc_fail("%s", failmsg);
}
