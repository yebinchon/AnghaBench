
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int atf_list_t ;
typedef int atf_error_t ;


 int ATF_BUILD_CPP ;
 int ATF_BUILD_CPPFLAGS ;
 int append_arg1 (char const*,int *) ;
 int append_arg2 (char*,char const*,int *) ;
 int append_config_var (char*,int ,int *) ;
 int append_optargs (char const* const*,int *) ;
 scalar_t__ atf_is_error (int ) ;
 int atf_list_fini (int *) ;
 int atf_list_init (int *) ;
 int list_to_array (int *,char***) ;

atf_error_t
atf_build_cpp(const char *sfile,
              const char *ofile,
              const char *const optargs[],
              char ***argv)
{
    atf_error_t err;
    atf_list_t argv_list;

    err = atf_list_init(&argv_list);
    if (atf_is_error(err))
        goto out;

    err = append_config_var("ATF_BUILD_CPP", ATF_BUILD_CPP, &argv_list);
    if (atf_is_error(err))
        goto out_list;

    err = append_config_var("ATF_BUILD_CPPFLAGS", ATF_BUILD_CPPFLAGS,
                            &argv_list);
    if (atf_is_error(err))
        goto out_list;

    if (optargs != ((void*)0)) {
        err = append_optargs(optargs, &argv_list);
        if (atf_is_error(err))
            goto out_list;
    }

    err = append_arg2("-o", ofile, &argv_list);
    if (atf_is_error(err))
        goto out_list;

    err = append_arg1(sfile, &argv_list);
    if (atf_is_error(err))
        goto out_list;

    err = list_to_array(&argv_list, argv);
    if (atf_is_error(err))
        goto out_list;

out_list:
    atf_list_fini(&argv_list);
out:
    return err;
}
