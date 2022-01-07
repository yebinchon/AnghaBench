
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct se_session {struct ft_sess* fabric_sess_ptr; } ;
struct ft_sess {int port_id; } ;


 int ft_lport_lock ;
 int ft_sess_put (struct ft_sess*) ;
 int ft_sess_unhash (struct ft_sess*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_debug (char*,int) ;
 int synchronize_rcu () ;
 int transport_deregister_session_configfs (struct se_session*) ;

void ft_sess_close(struct se_session *se_sess)
{
 struct ft_sess *sess = se_sess->fabric_sess_ptr;
 u32 port_id;

 mutex_lock(&ft_lport_lock);
 port_id = sess->port_id;
 if (port_id == -1) {
  mutex_unlock(&ft_lport_lock);
  return;
 }
 pr_debug("port_id %x\n", port_id);
 ft_sess_unhash(sess);
 mutex_unlock(&ft_lport_lock);
 transport_deregister_session_configfs(se_sess);
 ft_sess_put(sess);

 synchronize_rcu();
}
