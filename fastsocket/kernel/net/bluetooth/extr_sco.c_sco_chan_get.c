
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct sco_conn {struct sock* sk; } ;


 int sco_conn_lock (struct sco_conn*) ;
 int sco_conn_unlock (struct sco_conn*) ;

__attribute__((used)) static inline struct sock *sco_chan_get(struct sco_conn *conn)
{
 struct sock *sk = ((void*)0);
 sco_conn_lock(conn);
 sk = conn->sk;
 sco_conn_unlock(conn);
 return sk;
}
