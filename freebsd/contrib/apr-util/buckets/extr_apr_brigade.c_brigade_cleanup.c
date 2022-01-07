
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int apr_status_t ;


 int apr_brigade_cleanup (void*) ;

__attribute__((used)) static apr_status_t brigade_cleanup(void *data)
{
    return apr_brigade_cleanup(data);
}
