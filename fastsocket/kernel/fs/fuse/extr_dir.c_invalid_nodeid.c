
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;


 scalar_t__ FUSE_ROOT_ID ;

__attribute__((used)) static int invalid_nodeid(u64 nodeid)
{
 return !nodeid || nodeid == FUSE_ROOT_ID;
}
