
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int atf_error_t ;


 int atf_build_cpp (char const*,char const*,char const* const*,char***) ;
 scalar_t__ atf_is_error (int ) ;
 int atf_utils_free_charpp (char**) ;
 int check_build_run (char const* const*,int*) ;

atf_error_t
atf_check_build_cpp(const char *sfile,
                    const char *ofile,
                    const char *const optargs[],
                    bool *success)
{
    atf_error_t err;
    char **argv;

    err = atf_build_cpp(sfile, ofile, optargs, &argv);
    if (atf_is_error(err))
        goto out;

    err = check_build_run((const char *const *)argv, success);

    atf_utils_free_charpp(argv);
out:
    return err;
}
