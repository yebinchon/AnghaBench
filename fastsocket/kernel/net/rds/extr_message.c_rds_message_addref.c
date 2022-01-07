
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rds_message {int m_refcount; } ;


 int atomic_inc (int *) ;
 int atomic_read (int *) ;
 int rdsdebug (char*,struct rds_message*,int ) ;

void rds_message_addref(struct rds_message *rm)
{
 rdsdebug("addref rm %p ref %d\n", rm, atomic_read(&rm->m_refcount));
 atomic_inc(&rm->m_refcount);
}
