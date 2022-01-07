
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ APR_SUCCESS ;
 int abort () ;
 scalar_t__ apr_initialize () ;
 int apr_pool_create (int *,int *) ;
 int apr_pool_tag (int ,char*) ;
 int apr_terminate ;
 int atexit (int ) ;
 int p ;

void initialize(void) {
    if (apr_initialize() != APR_SUCCESS) {
        abort();
    }
    atexit(apr_terminate);

    apr_pool_create(&p, ((void*)0));
    apr_pool_tag(p, "apr-util global test pool");
}
