
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svc_rqst {scalar_t__* rq_pages; } ;


 unsigned int ARRAY_SIZE (scalar_t__*) ;
 int put_page (scalar_t__) ;

__attribute__((used)) static void
svc_release_buffer(struct svc_rqst *rqstp)
{
 unsigned int i;

 for (i = 0; i < ARRAY_SIZE(rqstp->rq_pages); i++)
  if (rqstp->rq_pages[i])
   put_page(rqstp->rq_pages[i]);
}
