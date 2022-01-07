
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int apr_pollset_method_e ;
typedef int apr_pollcb_provider_t ;
 int * apr_pollcb_provider_epoll ;
 int * apr_pollcb_provider_kqueue ;
 int * apr_pollcb_provider_poll ;
 int * apr_pollcb_provider_port ;

__attribute__((used)) static apr_pollcb_provider_t *pollcb_provider(apr_pollset_method_e method)
{
    apr_pollcb_provider_t *provider = ((void*)0);
    switch (method) {
        case 131:



        break;
        case 129:



        break;
        case 132:



        break;
        case 130:



        break;
        case 128:
        case 134:
        case 133:
        break;
    }
    return provider;
}
