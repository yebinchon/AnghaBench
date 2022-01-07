
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* atf_error_t ;
struct TYPE_3__ {char* m_type; } ;


 int PRE (int ) ;
 int snprintf (char*,size_t,char*,char*) ;

__attribute__((used)) static
void
error_format(const atf_error_t err, char *buf, size_t buflen)
{
    PRE(err != ((void*)0));
    snprintf(buf, buflen, "Error '%s'", err->m_type);
}
