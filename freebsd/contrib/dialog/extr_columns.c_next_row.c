
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static char **
next_row(char **target, int per_row)
{
    char *result = (char *) target;
    result += per_row;
    return (char **) (void *) result;
}
