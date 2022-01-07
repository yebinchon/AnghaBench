
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smb_rqst {int rq_nvec; struct kvec* rq_iov; } ;
struct kvec {int dummy; } ;
struct TCP_Server_Info {int dummy; } ;


 int smb_send_rqst (struct TCP_Server_Info*,struct smb_rqst*) ;

__attribute__((used)) static int
smb_sendv(struct TCP_Server_Info *server, struct kvec *iov, int n_vec)
{
 struct smb_rqst rqst = { .rq_iov = iov,
     .rq_nvec = n_vec };

 return smb_send_rqst(server, &rqst);
}
