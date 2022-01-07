
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int apr_bucket_brigade ;
typedef int apr_bucket ;


 int * APR_BRIGADE_FIRST (int *) ;
 int * APR_BRIGADE_SENTINEL (int *) ;
 int * APR_BUCKET_NEXT (int *) ;

__attribute__((used)) static int count_buckets(apr_bucket_brigade *bb)
{
    apr_bucket *e;
    int count = 0;

    for (e = APR_BRIGADE_FIRST(bb);
         e != APR_BRIGADE_SENTINEL(bb);
         e = APR_BUCKET_NEXT(e)) {
        count++;
    }

    return count;
}
