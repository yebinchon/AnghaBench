
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int apr_pollset_provider_t ;
typedef int apr_pollset_method_e ;
 int * apr_pollset_provider_aio_msgq ;
 int * apr_pollset_provider_epoll ;
 int * apr_pollset_provider_kqueue ;
 int * apr_pollset_provider_poll ;
 int * apr_pollset_provider_port ;
 int * apr_pollset_provider_select ;

__attribute__((used)) static apr_pollset_provider_t *pollset_provider(apr_pollset_method_e method)
{
    apr_pollset_provider_t *provider = ((void*)0);
    switch (method) {
        case 131:



        break;
        case 129:



        break;
        case 132:



        break;
        case 134:



        break;
        case 130:



        break;
        case 128:
            provider = apr_pollset_provider_select;
        break;
        case 133:
        break;
    }
    return provider;
}
