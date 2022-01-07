
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int user_data ;
struct sock {int dummy; } ;
struct iucv_sock {int dst_name; int src_name; struct iucv_path* path; } ;
struct iucv_path {int dummy; } ;
struct TYPE_2__ {int (* path_sever ) (struct iucv_path*,unsigned char*) ;} ;


 int ASCEBC (unsigned char*,int) ;
 int high_nmcpy (unsigned char*,int ) ;
 int iucv_path_free (struct iucv_path*) ;
 struct iucv_sock* iucv_sk (struct sock*) ;
 int low_nmcpy (unsigned char*,int ) ;
 TYPE_1__* pr_iucv ;
 int stub1 (struct iucv_path*,unsigned char*) ;
 int stub2 (struct iucv_path*,unsigned char*) ;

__attribute__((used)) static void iucv_sever_path(struct sock *sk, int with_user_data)
{
 unsigned char user_data[16];
 struct iucv_sock *iucv = iucv_sk(sk);
 struct iucv_path *path = iucv->path;

 if (iucv->path) {
  iucv->path = ((void*)0);
  if (with_user_data) {
   low_nmcpy(user_data, iucv->src_name);
   high_nmcpy(user_data, iucv->dst_name);
   ASCEBC(user_data, sizeof(user_data));
   pr_iucv->path_sever(path, user_data);
  } else
   pr_iucv->path_sever(path, ((void*)0));
  iucv_path_free(path);
 }
}
