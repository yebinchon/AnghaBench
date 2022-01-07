
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXIT_FAILURE ;
 int exit (int ) ;
 int fprintf (int ,char*,char const* const) ;
 int stderr ;

__attribute__((used)) static
void
check_args(const int argc, const char *const argv[], const int required)
{
    if (argc < required) {
        fprintf(stderr, "Usage: %s helper-name [args]\n", argv[0]);
        exit(EXIT_FAILURE);
    }
}
