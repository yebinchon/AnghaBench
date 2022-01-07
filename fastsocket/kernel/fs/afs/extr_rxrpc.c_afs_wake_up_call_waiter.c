
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct afs_call {int waitq; } ;


 int wake_up (int *) ;

__attribute__((used)) static void afs_wake_up_call_waiter(struct afs_call *call)
{
 wake_up(&call->waitq);
}
