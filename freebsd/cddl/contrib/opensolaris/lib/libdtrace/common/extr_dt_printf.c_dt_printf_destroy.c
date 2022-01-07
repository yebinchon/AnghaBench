
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* pfv_format; struct TYPE_5__* pfd_next; struct TYPE_5__* pfv_argv; } ;
typedef TYPE_1__ dt_pfargv_t ;
typedef TYPE_1__ dt_pfargd_t ;


 int free (TYPE_1__*) ;

void
dt_printf_destroy(dt_pfargv_t *pfv)
{
 dt_pfargd_t *pfd, *nfd;

 for (pfd = pfv->pfv_argv; pfd != ((void*)0); pfd = nfd) {
  nfd = pfd->pfd_next;
  free(pfd);
 }

 free(pfv->pfv_format);
 free(pfv);
}
