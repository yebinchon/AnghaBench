
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* atf_error_t ;
struct TYPE_3__ {int m_type; } ;


 int PRE (int ) ;
 scalar_t__ strcmp (int ,char const*) ;

bool
atf_error_is(const atf_error_t err, const char *type)
{
    PRE(err != ((void*)0));

    return strcmp(err->m_type, type) == 0;
}
