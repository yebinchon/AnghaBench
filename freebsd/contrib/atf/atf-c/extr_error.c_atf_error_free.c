
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* atf_error_t ;
struct TYPE_4__ {int m_free; struct TYPE_4__* m_data; } ;


 int PRE (int) ;
 int error_on_flight ;
 int free (TYPE_1__*) ;

void
atf_error_free(atf_error_t err)
{
    bool freeit;

    PRE(error_on_flight);
    PRE(err != ((void*)0));

    freeit = err->m_free;

    if (err->m_data != ((void*)0))
        free(err->m_data);

    if (freeit)
        free(err);

    error_on_flight = 0;
}
