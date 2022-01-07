
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_13__ {int fhandle3_val; int fhandle3_len; } ;
struct TYPE_8__ {char* symlink_data; } ;
struct TYPE_9__ {int data_val; int data_len; } ;
struct TYPE_10__ {TYPE_2__ data; } ;
struct TYPE_11__ {char* name; TYPE_3__ dir; } ;
struct TYPE_12__ {TYPE_1__ symlink; TYPE_4__ where; } ;
typedef TYPE_5__ SYMLINK3args ;


 int bzero (TYPE_5__*,int) ;
 TYPE_6__* rootfh ;

__attribute__((used)) static void
symlink_arginit(void *argp)
{
 SYMLINK3args *args = argp;

 bzero(args, sizeof (*args));
 args->where.dir.data.data_len = rootfh->fhandle3_len;
 args->where.dir.data.data_val = rootfh->fhandle3_val;
 args->where.name = "parlor";
 args->symlink.symlink_data = "interior";
}
