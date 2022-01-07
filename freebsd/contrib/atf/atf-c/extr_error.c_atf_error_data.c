
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* atf_error_t ;
struct TYPE_3__ {void const* m_data; } ;


 int PRE (int ) ;

const void *
atf_error_data(const atf_error_t err)
{
    PRE(err != ((void*)0));

    return err->m_data;
}
