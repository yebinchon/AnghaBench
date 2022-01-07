
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int dummy; } ;
struct iucv_sock {scalar_t__ msglimit; int src_name; int * src_user_id; } ;
typedef int query_buffer ;
struct TYPE_2__ {int lock; int autobind_name; } ;


 int EPROTO ;
 scalar_t__ IUCV_QUEUELEN_DEFAULT ;
 scalar_t__ __iucv_get_sock_by_name (char*) ;
 int atomic_inc_return (int *) ;
 int cpcmd (char*,char*,int,int*) ;
 struct iucv_sock* iucv_sk (struct sock*) ;
 TYPE_1__ iucv_sk_list ;
 int memcpy (int *,char*,int) ;
 int sprintf (char*,char*,int) ;
 scalar_t__ unlikely (int) ;
 int write_lock_bh (int *) ;
 int write_unlock_bh (int *) ;

__attribute__((used)) static int iucv_sock_autobind(struct sock *sk)
{
 struct iucv_sock *iucv = iucv_sk(sk);
 char query_buffer[80];
 char name[12];
 int err = 0;


 cpcmd("QUERY USERID", query_buffer, sizeof(query_buffer), &err);
 if (unlikely(err))
  return -EPROTO;

 memcpy(iucv->src_user_id, query_buffer, 8);

 write_lock_bh(&iucv_sk_list.lock);

 sprintf(name, "%08x", atomic_inc_return(&iucv_sk_list.autobind_name));
 while (__iucv_get_sock_by_name(name)) {
  sprintf(name, "%08x",
   atomic_inc_return(&iucv_sk_list.autobind_name));
 }

 write_unlock_bh(&iucv_sk_list.lock);

 memcpy(&iucv->src_name, name, 8);

 if (!iucv->msglimit)
  iucv->msglimit = IUCV_QUEUELEN_DEFAULT;

 return err;
}
