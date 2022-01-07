
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int apr_uint32_t ;
typedef int apr_size_t ;


 int HASH_FUNC_RESULT ;

__attribute__((used)) static apr_uint32_t my_hash_func(void *baton, const char *data,
                                 apr_size_t data_len)
{

  return HASH_FUNC_RESULT;
}
