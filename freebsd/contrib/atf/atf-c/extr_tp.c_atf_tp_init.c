
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct atf_tp_impl {int dummy; } ;
struct TYPE_4__ {TYPE_2__* pimpl; } ;
typedef TYPE_1__ atf_tp_t ;
typedef int atf_error_t ;
struct TYPE_5__ {int m_tcs; int m_config; } ;


 int INV (int) ;
 int PRE (int ) ;
 scalar_t__ atf_is_error (int ) ;
 int atf_list_fini (int *) ;
 int atf_list_init (int *) ;
 int atf_map_init_charpp (int *,char const* const*) ;
 int atf_no_memory_error () ;
 TYPE_2__* malloc (int) ;

atf_error_t
atf_tp_init(atf_tp_t *tp, const char *const *config)
{
    atf_error_t err;

    PRE(config != ((void*)0));

    tp->pimpl = malloc(sizeof(struct atf_tp_impl));
    if (tp->pimpl == ((void*)0))
        return atf_no_memory_error();

    err = atf_list_init(&tp->pimpl->m_tcs);
    if (atf_is_error(err))
        goto out;

    err = atf_map_init_charpp(&tp->pimpl->m_config, config);
    if (atf_is_error(err)) {
        atf_list_fini(&tp->pimpl->m_tcs);
        goto out;
    }

    INV(!atf_is_error(err));
out:
    return err;
}
