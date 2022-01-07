
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int
size_list(char **list)
{
    int result = 0;

    if (list != 0) {
 while (*list++ != 0) {
     ++result;
 }
    }
    return result;
}
