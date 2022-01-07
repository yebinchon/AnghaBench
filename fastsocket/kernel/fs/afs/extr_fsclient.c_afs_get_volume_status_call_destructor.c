
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct afs_call {int * reply3; } ;


 int afs_flat_call_destructor (struct afs_call*) ;
 int kfree (int *) ;

__attribute__((used)) static void afs_get_volume_status_call_destructor(struct afs_call *call)
{
 kfree(call->reply3);
 call->reply3 = ((void*)0);
 afs_flat_call_destructor(call);
}
