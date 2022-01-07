
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct se_session {struct ft_sess* fabric_sess_ptr; } ;
struct ft_sess {int port_id; } ;


 int pr_debug (char*,int ) ;

int ft_sess_shutdown(struct se_session *se_sess)
{
 struct ft_sess *sess = se_sess->fabric_sess_ptr;

 pr_debug("port_id %x\n", sess->port_id);
 return 1;
}
