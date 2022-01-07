
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct TCP_Server_Info {unsigned int in_flight; int req_lock; } ;


 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static inline unsigned int
in_flight(struct TCP_Server_Info *server)
{
 unsigned int num;
 spin_lock(&server->req_lock);
 num = server->in_flight;
 spin_unlock(&server->req_lock);
 return num;
}
