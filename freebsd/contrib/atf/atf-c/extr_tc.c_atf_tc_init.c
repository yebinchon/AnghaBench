
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct atf_tc_impl {int dummy; } ;
struct TYPE_9__ {TYPE_4__* pimpl; } ;
typedef TYPE_1__ atf_tc_t ;
typedef int (* atf_tc_head_t ) (TYPE_1__*) ;
typedef int * atf_tc_cleanup_t ;
typedef int atf_tc_body_t ;
typedef int atf_error_t ;
struct TYPE_10__ {char const* m_ident; int m_config; int m_vars; int (* m_head ) (TYPE_1__*) ;int * m_cleanup; int m_body; } ;


 int INV (int) ;
 int UNREACHABLE ;
 scalar_t__ atf_is_error (int ) ;
 int atf_map_fini (int *) ;
 int atf_map_init (int *) ;
 int atf_map_init_charpp (int *,char const* const*) ;
 int atf_no_memory_error () ;
 int atf_tc_get_md_var (TYPE_1__*,char*) ;
 int atf_tc_set_md_var (TYPE_1__*,char*,char const*) ;
 TYPE_4__* malloc (int) ;
 int report_fatal_error (char*) ;
 scalar_t__ strcmp (int ,char const*) ;
 int stub1 (TYPE_1__*) ;

atf_error_t
atf_tc_init(atf_tc_t *tc, const char *ident, atf_tc_head_t head,
            atf_tc_body_t body, atf_tc_cleanup_t cleanup,
            const char *const *config)
{
    atf_error_t err;

    tc->pimpl = malloc(sizeof(struct atf_tc_impl));
    if (tc->pimpl == ((void*)0)) {
        err = atf_no_memory_error();
        goto err;
    }

    tc->pimpl->m_ident = ident;
    tc->pimpl->m_head = head;
    tc->pimpl->m_body = body;
    tc->pimpl->m_cleanup = cleanup;

    err = atf_map_init_charpp(&tc->pimpl->m_config, config);
    if (atf_is_error(err))
        goto err;

    err = atf_map_init(&tc->pimpl->m_vars);
    if (atf_is_error(err))
        goto err_vars;

    err = atf_tc_set_md_var(tc, "ident", ident);
    if (atf_is_error(err))
        goto err_map;

    if (cleanup != ((void*)0)) {
        err = atf_tc_set_md_var(tc, "has.cleanup", "true");
        if (atf_is_error(err))
            goto err_map;
    }


    if (tc->pimpl->m_head != ((void*)0))
        tc->pimpl->m_head(tc);

    if (strcmp(atf_tc_get_md_var(tc, "ident"), ident) != 0) {
        report_fatal_error("Test case head modified the read-only 'ident' "
            "property");
        UNREACHABLE;
    }

    INV(!atf_is_error(err));
    return err;

err_map:
    atf_map_fini(&tc->pimpl->m_vars);
err_vars:
    atf_map_fini(&tc->pimpl->m_config);
err:
    return err;
}
