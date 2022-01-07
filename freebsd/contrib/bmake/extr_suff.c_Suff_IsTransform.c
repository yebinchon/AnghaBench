
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Suff ;
typedef int Boolean ;


 int SuffParseTransform (char*,int **,int **) ;

Boolean
Suff_IsTransform(char *str)
{
    Suff *src, *targ;

    return (SuffParseTransform(str, &src, &targ));
}
