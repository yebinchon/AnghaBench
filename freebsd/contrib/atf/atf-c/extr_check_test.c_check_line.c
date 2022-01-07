
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ATF_CHECK (int ) ;
 int ATF_CHECK_STREQ_MSG (char const*,char*,char*,char*,char const*) ;
 char* atf_utils_readline (int) ;
 int free (char*) ;

__attribute__((used)) static
void
check_line(int fd, const char *exp)
{
    char *line = atf_utils_readline(fd);
    ATF_CHECK(line != ((void*)0));
    ATF_CHECK_STREQ_MSG(exp, line, "read: '%s', expected: '%s'", line, exp);
    free(line);
}
