
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * atf_error_t ;


 int PRE (int) ;
 int error_init (int *,char*,int *,int ,int ) ;
 int error_on_flight ;
 int no_memory_error ;
 int no_memory_format ;

atf_error_t
atf_no_memory_error(void)
{
    PRE(!error_on_flight);

    error_init(&no_memory_error, "no_memory", ((void*)0), 0,
               no_memory_format);

    error_on_flight = 1;
    return &no_memory_error;
}
