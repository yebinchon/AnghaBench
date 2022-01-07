
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int atf_tc_t ;
typedef int atf_tc_pack_t ;


 int RE (int ) ;
 int atf_tc_fini (int *) ;
 int atf_tc_init_pack (int *,int const*,char const* const*) ;
 int run_h_tc (int *,char const*,char const*,char*) ;

__attribute__((used)) static
void
init_and_run_h_tc(atf_tc_t *tc, const atf_tc_pack_t *tcpack,
                  const char *outname, const char *errname)
{
    const char *const config[] = { ((void*)0) };

    RE(atf_tc_init_pack(tc, tcpack, config));
    run_h_tc(tc, outname, errname, "result");
    atf_tc_fini(tc);
}
