
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int apr_status_t ;
typedef int apr_file_t ;


 int APR_ENOTIMPL ;

__attribute__((used)) static apr_status_t apr_file_socket_pipe_close(apr_file_t *file)
{
    return APR_ENOTIMPL;
}
