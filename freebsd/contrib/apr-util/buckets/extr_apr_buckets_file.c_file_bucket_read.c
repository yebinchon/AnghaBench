
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef scalar_t__ apr_status_t ;
typedef scalar_t__ apr_size_t ;
typedef int apr_read_type_e ;
typedef scalar_t__ apr_off_t ;
typedef int apr_int32_t ;
typedef int apr_file_t ;
struct TYPE_10__ {int * fd; int readpool; } ;
typedef TYPE_1__ apr_bucket_file ;
struct TYPE_11__ {scalar_t__ length; scalar_t__ start; int list; int (* free ) (char*) ;int * type; TYPE_1__* data; } ;
typedef TYPE_2__ apr_bucket ;


 scalar_t__ APR_BUCKET_BUFF_SIZE ;
 int APR_BUCKET_INSERT_AFTER (TYPE_2__*,TYPE_2__*) ;
 scalar_t__ APR_EOF ;
 int APR_FOPEN_XTHREAD ;
 int APR_SET ;
 scalar_t__ APR_SUCCESS ;
 void* apr_bucket_alloc (int,int ) ;
 int apr_bucket_free (char*) ;
 int apr_bucket_heap_make (TYPE_2__*,char*,scalar_t__,int (*) (char*)) ;
 scalar_t__ apr_bucket_read (TYPE_2__*,char const**,scalar_t__*,int ) ;
 int apr_bucket_type_file ;
 int apr_file_flags_get (int *) ;
 int apr_file_name_get (char const**,int *) ;
 scalar_t__ apr_file_open (int **,char const*,int,int ,int ) ;
 scalar_t__ apr_file_read (int *,char*,scalar_t__*) ;
 scalar_t__ apr_file_seek (int *,int ,scalar_t__*) ;
 int file_bucket_destroy (TYPE_1__*) ;
 scalar_t__ file_make_mmap (TYPE_2__*,scalar_t__,scalar_t__,int ) ;

__attribute__((used)) static apr_status_t file_bucket_read(apr_bucket *e, const char **str,
                                     apr_size_t *len, apr_read_type_e block)
{
    apr_bucket_file *a = e->data;
    apr_file_t *f = a->fd;
    apr_bucket *b = ((void*)0);
    char *buf;
    apr_status_t rv;
    apr_size_t filelength = e->length;
    apr_off_t fileoffset = e->start;
    *len = (filelength > APR_BUCKET_BUFF_SIZE)
               ? APR_BUCKET_BUFF_SIZE
               : filelength;
    *str = ((void*)0);
    buf = apr_bucket_alloc(*len, e->list);


    rv = apr_file_seek(f, APR_SET, &fileoffset);
    if (rv != APR_SUCCESS) {
        apr_bucket_free(buf);
        return rv;
    }
    rv = apr_file_read(f, buf, len);
    if (rv != APR_SUCCESS && rv != APR_EOF) {
        apr_bucket_free(buf);
        return rv;
    }
    filelength -= *len;




    apr_bucket_heap_make(e, buf, *len, apr_bucket_free);


    if (filelength > 0 && rv != APR_EOF) {


        b = apr_bucket_alloc(sizeof(*b), e->list);
        b->start = fileoffset + (*len);
        b->length = filelength;
        b->data = a;
        b->type = &apr_bucket_type_file;
        b->free = apr_bucket_free;
        b->list = e->list;
        APR_BUCKET_INSERT_AFTER(e, b);
    }
    else {
        file_bucket_destroy(a);
    }

    *str = buf;
    return rv;
}
