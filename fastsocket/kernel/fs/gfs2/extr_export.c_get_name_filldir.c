
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct TYPE_2__ {scalar_t__ no_addr; } ;
struct get_name_filldir {scalar_t__* name; TYPE_1__ inum; } ;
typedef int loff_t ;


 int memcpy (scalar_t__*,char const*,int) ;

__attribute__((used)) static int get_name_filldir(void *opaque, const char *name, int length,
       loff_t offset, u64 inum, unsigned int type)
{
 struct get_name_filldir *gnfd = opaque;

 if (inum != gnfd->inum.no_addr)
  return 0;

 memcpy(gnfd->name, name, length);
 gnfd->name[length] = 0;

 return 1;
}
