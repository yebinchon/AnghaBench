
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int atf_dynstr_t ;


 int ATF_INCLUDEDIR ;
 int RE (int ) ;
 int atf_check_build_c_o (char const*,char*,char const**,int*) ;
 char* atf_dynstr_cstring (int *) ;
 int atf_dynstr_fini (int *) ;
 int atf_dynstr_init_fmt (int *,char*,int ) ;
 int atf_env_get_with_default (char*,int ) ;

bool
build_check_c_o(const char *path)
{
    bool success;
    atf_dynstr_t iflag;
    const char *optargs[4];

    RE(atf_dynstr_init_fmt(&iflag, "-I%s", atf_env_get_with_default(
        "ATF_INCLUDEDIR", ATF_INCLUDEDIR)));

    optargs[0] = atf_dynstr_cstring(&iflag);
    optargs[1] = "-Wall";
    optargs[2] = "-Werror";
    optargs[3] = ((void*)0);

    RE(atf_check_build_c_o(path, "test.o", optargs, &success));

    atf_dynstr_fini(&iflag);

    return success;
}
