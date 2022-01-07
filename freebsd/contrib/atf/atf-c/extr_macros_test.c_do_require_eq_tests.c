
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct require_eq_test {char* v1; char* v2; scalar_t__ ok; int msg; int body; int * head; } ;


 int ATF_REQUIRE (int) ;
 int atf_utils_grep_file (char*,char*,...) ;
 int exists (char*) ;
 int init_and_run_h_tc (char*,int *,int ) ;
 int printf (char*,char*,char*,char*) ;
 int unlink (char*) ;

__attribute__((used)) static
void
do_require_eq_tests(const struct require_eq_test *tests)
{
    const struct require_eq_test *t;

    for (t = &tests[0]; t->head != ((void*)0); t++) {
        printf("Checking with %s, %s and expecting %s\n", t->v1, t->v2,
               t->ok ? "true" : "false");

        init_and_run_h_tc("h_require", t->head, t->body);

        ATF_REQUIRE(exists("before"));
        if (t->ok) {
            ATF_REQUIRE(atf_utils_grep_file("^passed", "result"));
            ATF_REQUIRE(exists("after"));
        } else {
            ATF_REQUIRE(atf_utils_grep_file("^failed: .*macros_test.c"
                ":[0-9]+: %s$", "result", t->msg));
            ATF_REQUIRE(!exists("after"));
        }

        ATF_REQUIRE(unlink("before") != -1);
        if (t->ok)
            ATF_REQUIRE(unlink("after") != -1);
    }
}
