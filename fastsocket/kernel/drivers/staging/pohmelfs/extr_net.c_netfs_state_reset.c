
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netfs_state {int dummy; } ;


 int netfs_state_exit (struct netfs_state*) ;
 int netfs_state_init (struct netfs_state*) ;
 int netfs_state_lock_send (struct netfs_state*) ;
 int netfs_state_unlock_send (struct netfs_state*) ;

__attribute__((used)) static void __inline__ netfs_state_reset(struct netfs_state *st)
{
 netfs_state_lock_send(st);
 netfs_state_exit(st);
 netfs_state_init(st);
 netfs_state_unlock_send(st);
}
