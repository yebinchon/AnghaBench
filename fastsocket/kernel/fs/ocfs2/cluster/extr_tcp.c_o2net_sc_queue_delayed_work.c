
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct o2net_sock_container {int dummy; } ;
struct delayed_work {int dummy; } ;


 int o2net_wq ;
 int queue_delayed_work (int ,struct delayed_work*,int) ;
 int sc_get (struct o2net_sock_container*) ;
 int sc_put (struct o2net_sock_container*) ;

__attribute__((used)) static void o2net_sc_queue_delayed_work(struct o2net_sock_container *sc,
     struct delayed_work *work,
     int delay)
{
 sc_get(sc);
 if (!queue_delayed_work(o2net_wq, work, delay))
  sc_put(sc);
}
