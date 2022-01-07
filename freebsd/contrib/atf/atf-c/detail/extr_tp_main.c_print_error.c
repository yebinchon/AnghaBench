
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;
typedef int atf_error_t ;


 int PRE (int ) ;
 int atf_error_format (int const,char*,int) ;
 scalar_t__ atf_error_is (int const,char*) ;
 int atf_is_error (int const) ;
 int fprintf (int ,char*,char*,...) ;
 char* progname ;
 int stderr ;

__attribute__((used)) static
void
print_error(const atf_error_t err)
{
    char buf[4096];

    PRE(atf_is_error(err));

    atf_error_format(err, buf, sizeof(buf));
    fprintf(stderr, "%s: ERROR: %s\n", progname, buf);

    if (atf_error_is(err, "usage"))
        fprintf(stderr, "%s: See atf-test-program(1) for usage details.\n",
                progname);
}
