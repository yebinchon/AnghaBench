
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rds_connection {int c_state; } ;


 int atomic_cmpxchg (int *,int,int) ;

__attribute__((used)) static inline int
rds_conn_transition(struct rds_connection *conn, int old, int new)
{
 return atomic_cmpxchg(&conn->c_state, old, new) == old;
}
