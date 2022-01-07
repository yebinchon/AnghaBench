
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int apr_size_t ;
typedef int apr_bucket ;
typedef int abts_case ;


 int ABTS_ASSERT (int *,char*,int) ;
 int ABTS_STR_NEQUAL (int *,char const*,char const*,int ) ;
 int APR_BLOCK_READ ;
 int apr_assert_success (int *,char*,int ) ;
 int apr_bucket_read (int *,char const**,int *,int ) ;

__attribute__((used)) static void test_bucket_content(abts_case *tc,
                                apr_bucket *e,
                                const char *edata,
                                apr_size_t elen)
{
    const char *adata;
    apr_size_t alen;

    apr_assert_success(tc, "read from bucket",
                       apr_bucket_read(e, &adata, &alen,
                                       APR_BLOCK_READ));

    ABTS_ASSERT(tc, "read expected length", alen == elen);
    ABTS_STR_NEQUAL(tc, edata, adata, elen);
}
