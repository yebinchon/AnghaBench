
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rds_connection {int c_state; } ;


 int atomic_read (int *) ;

__attribute__((used)) static inline int
rds_conn_state(struct rds_connection *conn)
{
 return atomic_read(&conn->c_state);
}
