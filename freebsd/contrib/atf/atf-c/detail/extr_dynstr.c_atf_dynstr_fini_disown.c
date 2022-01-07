
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* m_data; } ;
typedef TYPE_1__ atf_dynstr_t ;


 int INV (int ) ;

char *
atf_dynstr_fini_disown(atf_dynstr_t *ad)
{
    INV(ad->m_data != ((void*)0));
    return ad->m_data;
}
