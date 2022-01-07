
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct work_struct {int dummy; } ;


 int cond_resched () ;
 scalar_t__ rds_tcp_accept_one (int ) ;
 int rds_tcp_listen_sock ;

__attribute__((used)) static void rds_tcp_accept_worker(struct work_struct *work)
{
 while (rds_tcp_accept_one(rds_tcp_listen_sock) == 0)
  cond_resched();
}
