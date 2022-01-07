
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct afs_call {int dummy; } ;


 int EINPROGRESS ;
 int _enter (char*) ;

__attribute__((used)) static int afs_dont_wait_for_call_to_complete(struct afs_call *call)
{
 _enter("");
 return -EINPROGRESS;
}
