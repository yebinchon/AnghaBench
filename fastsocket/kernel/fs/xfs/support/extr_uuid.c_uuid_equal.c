
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uuid_t ;


 scalar_t__ memcmp (int *,int *,int) ;

int
uuid_equal(uuid_t *uuid1, uuid_t *uuid2)
{
 return memcmp(uuid1, uuid2, sizeof(uuid_t)) ? 0 : 1;
}
