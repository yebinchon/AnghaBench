
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int apr_uint64_t ;


 scalar_t__ APR_SUCCESS ;
 scalar_t__ apr_generate_random_bytes (unsigned char*,int) ;
 int apr_time_now () ;
 int rand () ;
 int srand (unsigned int) ;

__attribute__((used)) static int true_random(void)
{
    apr_uint64_t time_now;
    time_now = apr_time_now();
    srand((unsigned int)(((time_now >> 32) ^ time_now) & 0xffffffff));

    return rand() & 0x0FFFF;
}
