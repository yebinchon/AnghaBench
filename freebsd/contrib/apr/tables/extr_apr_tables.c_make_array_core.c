
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int apr_pool_t ;
struct TYPE_3__ {int elt_size; int nalloc; scalar_t__ nelts; int * pool; int elts; } ;
typedef TYPE_1__ apr_array_header_t ;


 int apr_palloc (int *,int) ;
 int apr_pcalloc (int *,int) ;

__attribute__((used)) static void make_array_core(apr_array_header_t *res, apr_pool_t *p,
       int nelts, int elt_size, int clear)
{




    if (nelts < 1) {
        nelts = 1;
    }

    if (clear) {
        res->elts = apr_pcalloc(p, nelts * elt_size);
    }
    else {
        res->elts = apr_palloc(p, nelts * elt_size);
    }

    res->pool = p;
    res->elt_size = elt_size;
    res->nelts = 0;
    res->nalloc = nelts;
}
