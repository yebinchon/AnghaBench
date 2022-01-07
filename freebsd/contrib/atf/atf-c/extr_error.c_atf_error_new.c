
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


typedef TYPE_1__* atf_error_t ;
struct TYPE_9__ {int m_free; } ;


 int INV (int ) ;
 int POST (int) ;
 int PRE (int) ;
 TYPE_1__* atf_no_memory_error () ;
 int error_init (TYPE_1__*,char const*,void*,size_t,void (*) (TYPE_1__* const,char*,size_t)) ;
 int error_on_flight ;
 int free (TYPE_1__*) ;
 TYPE_1__* malloc (int) ;

atf_error_t
atf_error_new(const char *type, void *data, size_t datalen,
              void (*format)(const atf_error_t, char *, size_t))
{
    atf_error_t err;

    PRE(!error_on_flight);
    PRE(data != ((void*)0) || datalen == 0);
    PRE(datalen != 0 || data == ((void*)0));

    err = malloc(sizeof(*err));
    if (err == ((void*)0))
        err = atf_no_memory_error();
    else {
        if (!error_init(err, type, data, datalen, format)) {
            free(err);
            err = atf_no_memory_error();
        } else {
            err->m_free = 1;
            error_on_flight = 1;
        }
    }

    INV(err != ((void*)0));
    POST(error_on_flight);
    return err;
}
