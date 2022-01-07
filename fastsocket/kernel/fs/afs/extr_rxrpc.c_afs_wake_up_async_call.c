
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct afs_call {int async_work; } ;


 int _enter (char*) ;
 int afs_async_calls ;
 int queue_work (int ,int *) ;

__attribute__((used)) static void afs_wake_up_async_call(struct afs_call *call)
{
 _enter("");
 queue_work(afs_async_calls, &call->async_work);
}
