
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int atf_tp_t ;
typedef int atf_tc_t ;


 int INV (int ) ;
 char** atf_tc_get_md_vars (int const*) ;
 int ** atf_tp_get_tcs (int const*) ;
 int atf_utils_free_charpp (char**) ;
 int printf (char*,...) ;
 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static
void
list_tcs(const atf_tp_t *tp)
{
    const atf_tc_t *const *tcs;
    const atf_tc_t *const *tcsptr;

    printf("Content-Type: application/X-atf-tp; version=\"1\"\n\n");

    tcs = atf_tp_get_tcs(tp);
    INV(tcs != ((void*)0));
    for (tcsptr = tcs; *tcsptr != ((void*)0); tcsptr++) {
        const atf_tc_t *tc = *tcsptr;
        char **vars = atf_tc_get_md_vars(tc);
        char **ptr;

        INV(vars != ((void*)0));

        if (tcsptr != tcs)
            printf("\n");

        for (ptr = vars; *ptr != ((void*)0); ptr += 2) {
            if (strcmp(*ptr, "ident") == 0) {
                printf("ident: %s\n", *(ptr + 1));
                break;
            }
        }

        for (ptr = vars; *ptr != ((void*)0); ptr += 2) {
            if (strcmp(*ptr, "ident") != 0) {
                printf("%s: %s\n", *ptr, *(ptr + 1));
            }
        }

        atf_utils_free_charpp(vars);
    }
}
