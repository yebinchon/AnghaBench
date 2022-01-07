
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct check_eq_test {char* v1; char* v2; int msg; scalar_t__ ok; int body; int * head; } ;


 int ATF_CHECK (int) ;
 int ATF_REQUIRE (int) ;
 int atf_utils_grep_file (char*,char*,...) ;
 int exists (char*) ;
 int init_and_run_h_tc (char*,int *,int ) ;
 int printf (char*,char*,char*,char*) ;
 int unlink (char*) ;

__attribute__((used)) static
void
do_check_eq_tests(const struct check_eq_test *tests)
{
    const struct check_eq_test *t;

    for (t = &tests[0]; t->head != ((void*)0); t++) {
        printf("Checking with %s, %s and expecting %s\n", t->v1, t->v2,
               t->ok ? "true" : "false");

        init_and_run_h_tc("h_check", t->head, t->body);

        ATF_CHECK(exists("before"));
        ATF_CHECK(exists("after"));

        if (t->ok) {
            ATF_REQUIRE(atf_utils_grep_file("^passed", "result"));
        } else {
            ATF_REQUIRE(atf_utils_grep_file("^failed", "result"));
            ATF_CHECK(atf_utils_grep_file("Check failed: .*"
                "macros_test.c:[0-9]+: %s$", "error", t->msg));
        }

        ATF_CHECK(unlink("before") != -1);
        ATF_CHECK(unlink("after") != -1);
    }
}
