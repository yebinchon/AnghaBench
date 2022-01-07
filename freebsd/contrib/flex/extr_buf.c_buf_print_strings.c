
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Buf {int nelts; scalar_t__ elts; } ;
typedef int FILE ;


 int fprintf (int *,char*,char const*) ;

struct Buf *buf_print_strings(struct Buf * buf, FILE* out)
{
    int i;

    if(!buf || !out)
        return buf;

    for (i=0; i < buf->nelts; i++){
        const char * s = ((char**)buf->elts)[i];
        if(s)
            fprintf(out, "%s", s);
    }
    return buf;
}
