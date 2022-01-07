
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pid_t ;
typedef int atf_dynstr_t ;


 int ATF_REQUIRE (int) ;
 int ATF_REQUIRE_EQ (int const,int ) ;
 int WEXITSTATUS (int) ;
 int WIFEXITED (int) ;
 int atf_dynstr_cstring (int *) ;
 int atf_utils_cat_file (int ,char*) ;
 int atf_utils_compare_file (int ,char const*) ;
 int atf_utils_copy_file (int ,char const*) ;
 int init_out_filename (int *,int const,char*,int) ;
 size_t const strlen (char const*) ;
 scalar_t__ strncmp (char const*,char const*,size_t const) ;
 int unlink (int ) ;
 int waitpid (int const,int*,int ) ;

void
atf_utils_wait(const pid_t pid, const int exitstatus, const char *expout,
               const char *experr)
{
    int status;
    ATF_REQUIRE(waitpid(pid, &status, 0) != -1);

    atf_dynstr_t out_name;
    init_out_filename(&out_name, pid, "out", 1);

    atf_dynstr_t err_name;
    init_out_filename(&err_name, pid, "err", 1);

    atf_utils_cat_file(atf_dynstr_cstring(&out_name), "subprocess stdout: ");
    atf_utils_cat_file(atf_dynstr_cstring(&err_name), "subprocess stderr: ");

    ATF_REQUIRE(WIFEXITED(status));
    ATF_REQUIRE_EQ(exitstatus, WEXITSTATUS(status));

    const char *save_prefix = "save:";
    const size_t save_prefix_length = strlen(save_prefix);

    if (strlen(expout) > save_prefix_length &&
        strncmp(expout, save_prefix, save_prefix_length) == 0) {
        atf_utils_copy_file(atf_dynstr_cstring(&out_name),
                            expout + save_prefix_length);
    } else {
        ATF_REQUIRE(atf_utils_compare_file(atf_dynstr_cstring(&out_name),
                                           expout));
    }

    if (strlen(experr) > save_prefix_length &&
        strncmp(experr, save_prefix, save_prefix_length) == 0) {
        atf_utils_copy_file(atf_dynstr_cstring(&err_name),
                            experr + save_prefix_length);
    } else {
        ATF_REQUIRE(atf_utils_compare_file(atf_dynstr_cstring(&err_name),
                                           experr));
    }

    ATF_REQUIRE(unlink(atf_dynstr_cstring(&out_name)) != -1);
    ATF_REQUIRE(unlink(atf_dynstr_cstring(&err_name)) != -1);
}
