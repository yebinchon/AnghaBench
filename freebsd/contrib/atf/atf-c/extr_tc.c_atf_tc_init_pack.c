
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int atf_tc_t ;
struct TYPE_3__ {int m_cleanup; int m_body; int m_head; int m_ident; } ;
typedef TYPE_1__ atf_tc_pack_t ;
typedef int atf_error_t ;


 int atf_tc_init (int *,int ,int ,int ,int ,char const* const*) ;

atf_error_t
atf_tc_init_pack(atf_tc_t *tc, const atf_tc_pack_t *pack,
                 const char *const *config)
{
    return atf_tc_init(tc, pack->m_ident, pack->m_head, pack->m_body,
                       pack->m_cleanup, config);
}
