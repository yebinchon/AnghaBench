
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ft_tport {int sess_count; } ;
struct ft_sess {int port_id; scalar_t__ params; int hash; struct ft_tport* tport; } ;


 int BUG_ON (int) ;
 int hlist_del_rcu (int *) ;

__attribute__((used)) static void ft_sess_unhash(struct ft_sess *sess)
{
 struct ft_tport *tport = sess->tport;

 hlist_del_rcu(&sess->hash);
 BUG_ON(!tport->sess_count);
 tport->sess_count--;
 sess->port_id = -1;
 sess->params = 0;
}
