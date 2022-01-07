
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nvpair_t ;


 int nvpair_value_match_regex (int *,int,char*,int *,char**) ;

int
nvpair_value_match(nvpair_t *nvp, int ai, char *value, char **ep)
{
 return (nvpair_value_match_regex(nvp, ai, value, ((void*)0), ep));
}
