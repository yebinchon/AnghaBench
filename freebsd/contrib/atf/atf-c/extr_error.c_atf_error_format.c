
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* atf_error_t ;
struct TYPE_4__ {int (* m_format ) (TYPE_1__* const,char*,size_t) ;} ;


 int PRE (int ) ;
 int stub1 (TYPE_1__* const,char*,size_t) ;

void
atf_error_format(const atf_error_t err, char *buf, size_t buflen)
{
    PRE(err != ((void*)0));
    err->m_format(err, buf, buflen);
}
