
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int apr_uint64_t ;
typedef int apr_uint32_t ;


 int APR_UINT64_C (int) ;

__attribute__((used)) static apr_uint32_t lgc(apr_uint32_t a)
{
    apr_uint64_t z = a;
    z *= 279470273;
    z %= APR_UINT64_C(4294967291);
    return (apr_uint32_t)z;
}
