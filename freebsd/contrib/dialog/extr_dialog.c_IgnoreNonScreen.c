
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TRUE ;
 int end_dialog () ;
 int ignore_unknown ;

__attribute__((used)) static void
IgnoreNonScreen(char **argv, int offset)
{
    if (argv[offset + 1] == 0) {
 ignore_unknown = TRUE;
 end_dialog();
    }
}
