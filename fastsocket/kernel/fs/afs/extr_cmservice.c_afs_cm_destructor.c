
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct afs_call {int * buffer; int * server; } ;


 int _enter (char*) ;
 int afs_put_server (int *) ;
 int kfree (int *) ;

__attribute__((used)) static void afs_cm_destructor(struct afs_call *call)
{
 _enter("");

 afs_put_server(call->server);
 call->server = ((void*)0);
 kfree(call->buffer);
 call->buffer = ((void*)0);
}
