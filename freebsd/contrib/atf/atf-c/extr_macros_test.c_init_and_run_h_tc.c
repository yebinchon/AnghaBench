
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int atf_tc_t ;


 int RE (int ) ;
 int atf_tc_fini (int *) ;
 int atf_tc_init (int *,char const*,void (*) (atf_tc_t*),void (*) (atf_tc_t const*),int *,char const* const*) ;
 int run_h_tc (int *,char*,char*,char*) ;

__attribute__((used)) static
void
init_and_run_h_tc(const char *name, void (*head)(atf_tc_t *),
                  void (*body)(const atf_tc_t *))
{
    atf_tc_t tc;
    const char *const config[] = { ((void*)0) };

    RE(atf_tc_init(&tc, name, head, body, ((void*)0), config));
    run_h_tc(&tc, "output", "error", "result");
    atf_tc_fini(&tc);
}
