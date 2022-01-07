
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svc_rqst {int rq_res; } ;


 int ECONNREFUSED ;
 int svc_sendto (struct svc_rqst*,int *) ;

__attribute__((used)) static int
svc_udp_sendto(struct svc_rqst *rqstp)
{
 int error;

 error = svc_sendto(rqstp, &rqstp->rq_res);
 if (error == -ECONNREFUSED)

  error = svc_sendto(rqstp, &rqstp->rq_res);

 return error;
}
