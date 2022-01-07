
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ failed; } ;
typedef TYPE_1__ abts_case ;


 scalar_t__ TRUE ;
 int fflush (int ) ;
 int fprintf (int ,char*,int,char const*,char const*) ;
 int stderr ;
 int strncmp (char const*,char const*,size_t) ;
 int update_status () ;
 scalar_t__ verbose ;

void abts_str_nequal(abts_case *tc, const char *expected, const char *actual,
                       size_t n, int lineno)
{
    update_status();
    if (tc->failed) return;

    if (!strncmp(expected, actual, n)) return;

    tc->failed = TRUE;
    if (verbose) {
        fprintf(stderr, "Line %d: expected something other than <%s>, but saw <%s>\n",
                lineno, expected, actual);
        fflush(stderr);
    }
}
