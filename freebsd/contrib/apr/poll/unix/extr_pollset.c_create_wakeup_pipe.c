
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int apr_status_t ;
typedef int apr_pollset_t ;


 int APR_ENOTIMPL ;

__attribute__((used)) static apr_status_t create_wakeup_pipe(apr_pollset_t *pollset)
{
    return APR_ENOTIMPL;
}
