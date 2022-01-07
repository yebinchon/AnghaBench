
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_1__* atf_error_t ;
struct TYPE_6__ {int m_free; char const* m_type; void (* m_format ) (TYPE_1__* const,char*,size_t) ;int * m_data; } ;


 int PRE (int) ;
 void error_format (TYPE_1__* const,char*,size_t) ;
 int * malloc (size_t) ;
 int memcpy (int *,void*,size_t) ;

__attribute__((used)) static
bool
error_init(atf_error_t err, const char *type, void *data, size_t datalen,
           void (*format)(const atf_error_t, char *, size_t))
{
    bool ok;

    PRE(data != ((void*)0) || datalen == 0);
    PRE(datalen != 0 || data == ((void*)0));

    err->m_free = 0;
    err->m_type = type;
    err->m_format = (format == ((void*)0)) ? error_format : format;

    ok = 1;
    if (data == ((void*)0)) {
        err->m_data = ((void*)0);
    } else {
        err->m_data = malloc(datalen);
        if (err->m_data == ((void*)0)) {
            ok = 0;
        } else
            memcpy(err->m_data, data, datalen);
    }

    return ok;
}
