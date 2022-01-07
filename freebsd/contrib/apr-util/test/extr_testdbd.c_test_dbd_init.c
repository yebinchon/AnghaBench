
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ apr_status_t ;
typedef int apr_pool_t ;
typedef int abts_case ;


 int ABTS_ASSERT (int *,char*,int) ;
 scalar_t__ APR_SUCCESS ;
 scalar_t__ apr_dbd_init (int *) ;
 int * p ;

__attribute__((used)) static void test_dbd_init(abts_case *tc, void *data)
{
    apr_pool_t *pool = p;
    apr_status_t rv;

    rv = apr_dbd_init(pool);
    ABTS_ASSERT(tc, "failed to init apr_dbd", rv == APR_SUCCESS);
}
