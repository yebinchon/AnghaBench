
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcp_congestion_ops {int list; int flags; } ;


 int CAP_NET_ADMIN ;
 int ENOENT ;
 int TCP_CONG_NON_RESTRICTED ;
 scalar_t__ capable (int ) ;
 int list_move (int *,int *) ;
 int request_module (char*,char const*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 struct tcp_congestion_ops* tcp_ca_find (char const*) ;
 int tcp_cong_list ;
 int tcp_cong_list_lock ;

int tcp_set_default_congestion_control(const char *name)
{
 struct tcp_congestion_ops *ca;
 int ret = -ENOENT;

 spin_lock(&tcp_cong_list_lock);
 ca = tcp_ca_find(name);
 if (ca) {
  ca->flags |= TCP_CONG_NON_RESTRICTED;
  list_move(&ca->list, &tcp_cong_list);
  ret = 0;
 }
 spin_unlock(&tcp_cong_list_lock);

 return ret;
}
