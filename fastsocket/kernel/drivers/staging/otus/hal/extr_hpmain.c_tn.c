
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int tn(int exp)
{
    int i;
 int tmp = 1;
    for(i=0; i<exp; i++)
        tmp = tmp*2;

    return tmp;
}
