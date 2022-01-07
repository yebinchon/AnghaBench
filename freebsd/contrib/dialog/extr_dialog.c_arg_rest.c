
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int isOption (char*) ;
 scalar_t__ lookupOption (char*,int) ;
 scalar_t__ o_unknown ;

__attribute__((used)) static int
arg_rest(char *argv[])
{
    int i = 1;

    while (argv[i] != 0
    && (!isOption(argv[i]) || lookupOption(argv[i], 7) == o_unknown))
 i++;
    return i;
}
