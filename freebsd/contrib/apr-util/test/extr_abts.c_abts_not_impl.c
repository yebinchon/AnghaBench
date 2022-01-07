
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* suite; } ;
typedef TYPE_2__ abts_case ;
struct TYPE_4__ {int not_impl; } ;


 int fflush (int ) ;
 int fprintf (int ,char*,int,char const*) ;
 int stderr ;
 int update_status () ;
 scalar_t__ verbose ;

void abts_not_impl(abts_case *tc, const char *message, int lineno)
{
    update_status();

    tc->suite->not_impl++;
    if (verbose) {
        fprintf(stderr, "Line %d: %s\n", lineno, message);
        fflush(stderr);
    }
}
