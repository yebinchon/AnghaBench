
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ft_tport {int dummy; } ;
struct fc_lport {struct ft_tport** prov; } ;


 size_t FC_TYPE_FCP ;
 int ft_lport_lock ;
 int ft_tport_delete (struct ft_tport*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void ft_lport_del(struct fc_lport *lport, void *arg)
{
 struct ft_tport *tport;

 mutex_lock(&ft_lport_lock);
 tport = lport->prov[FC_TYPE_FCP];
 if (tport)
  ft_tport_delete(tport);
 mutex_unlock(&ft_lport_lock);
}
