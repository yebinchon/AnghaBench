
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int apr_bucket_file ;


 int apr_bucket_free (int *) ;
 scalar_t__ apr_bucket_shared_destroy (int *) ;

__attribute__((used)) static void file_bucket_destroy(void *data)
{
    apr_bucket_file *f = data;

    if (apr_bucket_shared_destroy(f)) {


        apr_bucket_free(f);
    }
}
