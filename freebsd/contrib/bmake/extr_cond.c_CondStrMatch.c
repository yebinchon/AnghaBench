
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Str_Match (void const*,void const*) ;

__attribute__((used)) static int
CondStrMatch(const void *string, const void *pattern)
{
    return(!Str_Match(string, pattern));
}
