
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int regex_t ;


 int ATF_REQUIRE (int) ;
 int REG_EXTENDED ;
 int REG_NOMATCH ;
 int printf (char*,char const*,char const*) ;
 scalar_t__ regcomp (int *,char const*,int ) ;
 int regexec (int *,char const*,int ,int *,int ) ;
 int regfree (int *) ;

__attribute__((used)) static
bool
grep_string(const char *regex, const char *str)
{
    int res;
    regex_t preg;

    printf("Looking for '%s' in '%s'\n", regex, str);
    ATF_REQUIRE(regcomp(&preg, regex, REG_EXTENDED) == 0);

    res = regexec(&preg, str, 0, ((void*)0), 0);
    ATF_REQUIRE(res == 0 || res == REG_NOMATCH);

    regfree(&preg);

    return res == 0;
}
