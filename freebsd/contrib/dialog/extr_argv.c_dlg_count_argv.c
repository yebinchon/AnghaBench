
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int
dlg_count_argv(char **argv)
{
    int result = 0;

    if (argv != 0) {
 while (argv[result] != 0)
     ++result;
    }
    return result;
}
