
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum out_type { ____Placeholder_out_type } out_type ;


 int ATF_CHECK (int) ;
 int UNREACHABLE ;
 int atf_utils_grep_file (char*,char*) ;



__attribute__((used)) static
void
check_file(const enum out_type type)
{
    switch (type) {
    case 128:
        ATF_CHECK(atf_utils_grep_file("stdout: msg", "stdout"));
        ATF_CHECK(!atf_utils_grep_file("stderr: msg", "stdout"));
        break;
    case 129:
        ATF_CHECK(atf_utils_grep_file("stderr: msg", "stderr"));
        ATF_CHECK(!atf_utils_grep_file("stdout: msg", "stderr"));
        break;
    default:
        UNREACHABLE;
    }
}
