
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ failed; } ;
typedef TYPE_1__ abts_case ;


 scalar_t__ TRUE ;
 int fflush (int ) ;
 int fprintf (int ,char*,int,char const*) ;
 int stderr ;
 int update_status () ;
 scalar_t__ verbose ;

void abts_fail(abts_case *tc, const char *message, int lineno)
{
    update_status();
    if (tc->failed) return;

    tc->failed = TRUE;
    if (verbose) {
        fprintf(stderr, "Line %d: %s\n", lineno, message);
        fflush(stderr);
    }
}
