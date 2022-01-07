
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ft_tport {int dummy; } ;
struct ft_sess {int se_sess; } ;
struct TYPE_3__ {int port_id; } ;
struct fc_rport_priv {int prli_count; TYPE_1__ ids; TYPE_2__* local_port; } ;
struct TYPE_4__ {int * prov; } ;


 size_t FC_TYPE_FCP ;
 int ft_lport_lock ;
 struct ft_sess* ft_sess_delete (struct ft_tport*,int ) ;
 int ft_sess_put (struct ft_sess*) ;
 int lockdep_is_held (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct ft_tport* rcu_dereference_protected (int ,int ) ;
 int transport_deregister_session_configfs (int ) ;

__attribute__((used)) static void ft_prlo(struct fc_rport_priv *rdata)
{
 struct ft_sess *sess;
 struct ft_tport *tport;

 mutex_lock(&ft_lport_lock);
 tport = rcu_dereference_protected(rdata->local_port->prov[FC_TYPE_FCP],
       lockdep_is_held(&ft_lport_lock));

 if (!tport) {
  mutex_unlock(&ft_lport_lock);
  return;
 }
 sess = ft_sess_delete(tport, rdata->ids.port_id);
 if (!sess) {
  mutex_unlock(&ft_lport_lock);
  return;
 }
 mutex_unlock(&ft_lport_lock);
 transport_deregister_session_configfs(sess->se_sess);
 ft_sess_put(sess);
 rdata->prli_count--;

}
