
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;
typedef int int32_t ;


 scalar_t__ reqid_type (int ) ;

int
reqid_istype(int32_t reqid, u_int type)
{
 return (reqid_type(reqid) == type);
}
