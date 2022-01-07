
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rds_message {int m_conn_item; int m_sock_item; int m_refcount; } ;


 int BUG_ON (int) ;
 int WARN (int,char*,struct rds_message*) ;
 scalar_t__ atomic_dec_and_test (int *) ;
 int atomic_read (int *) ;
 int kfree (struct rds_message*) ;
 int list_empty (int *) ;
 int rds_message_purge (struct rds_message*) ;
 int rdsdebug (char*,struct rds_message*,int ) ;

void rds_message_put(struct rds_message *rm)
{
 rdsdebug("put rm %p ref %d\n", rm, atomic_read(&rm->m_refcount));
 WARN(!atomic_read(&rm->m_refcount), "danger refcount zero on %p\n", rm);
 if (atomic_dec_and_test(&rm->m_refcount)) {
  BUG_ON(!list_empty(&rm->m_sock_item));
  BUG_ON(!list_empty(&rm->m_conn_item));
  rds_message_purge(rm);

  kfree(rm);
 }
}
