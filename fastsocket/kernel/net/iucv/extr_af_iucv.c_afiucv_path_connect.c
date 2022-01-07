
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int user_data ;
struct socket {struct sock* sk; } ;
struct sockaddr_iucv {int siucv_user_id; int siucv_name; } ;
struct sockaddr {int dummy; } ;
struct sock {int dummy; } ;
struct iucv_sock {int * path; int msglimit; int src_name; } ;
struct TYPE_2__ {int (* path_connect ) (int *,int *,int ,int *,unsigned char*,struct sock*) ;} ;


 int ASCEBC (unsigned char*,int) ;
 int EACCES ;
 int EAGAIN ;
 int ECONNREFUSED ;
 int ENETUNREACH ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IUCV_IPRMDATA ;
 int af_iucv_handler ;
 int high_nmcpy (unsigned char*,int ) ;
 int * iucv_path_alloc (int ,int ,int ) ;
 int iucv_path_free (int *) ;
 struct iucv_sock* iucv_sk (struct sock*) ;
 int low_nmcpy (unsigned char*,int ) ;
 TYPE_1__* pr_iucv ;
 int stub1 (int *,int *,int ,int *,unsigned char*,struct sock*) ;

__attribute__((used)) static int afiucv_path_connect(struct socket *sock, struct sockaddr *addr)
{
 struct sockaddr_iucv *sa = (struct sockaddr_iucv *) addr;
 struct sock *sk = sock->sk;
 struct iucv_sock *iucv = iucv_sk(sk);
 unsigned char user_data[16];
 int err;

 high_nmcpy(user_data, sa->siucv_name);
 low_nmcpy(user_data, iucv->src_name);
 ASCEBC(user_data, sizeof(user_data));


 iucv->path = iucv_path_alloc(iucv->msglimit,
         IUCV_IPRMDATA, GFP_KERNEL);
 if (!iucv->path) {
  err = -ENOMEM;
  goto done;
 }
 err = pr_iucv->path_connect(iucv->path, &af_iucv_handler,
        sa->siucv_user_id, ((void*)0), user_data,
        sk);
 if (err) {
  iucv_path_free(iucv->path);
  iucv->path = ((void*)0);
  switch (err) {
  case 0x0b:
   err = -ENETUNREACH;
   break;
  case 0x0d:
  case 0x0e:
   err = -EAGAIN;
   break;
  case 0x0f:
   err = -EACCES;
   break;
  default:
   err = -ECONNREFUSED;
   break;
  }
 }
done:
 return err;
}
