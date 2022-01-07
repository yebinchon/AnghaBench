
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strcmp (char const* const,char const* const) ;

__attribute__((used)) static int
VarWordCompare(const void *a, const void *b)
{
 int r = strcmp(*(const char * const *)a, *(const char * const *)b);
 return r;
}
