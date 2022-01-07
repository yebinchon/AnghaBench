
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_10__ {int fhandle3_val; int fhandle3_len; } ;
struct TYPE_6__ {int data_val; int data_len; } ;
struct TYPE_7__ {TYPE_1__ data; } ;
struct TYPE_8__ {char* name; TYPE_2__ dir; } ;
struct TYPE_9__ {TYPE_3__ object; } ;
typedef TYPE_4__ RMDIR3args ;


 TYPE_5__* rootfh ;

__attribute__((used)) static void
rmdir_arginit(void *argp)
{
 RMDIR3args *args = argp;

 args->object.dir.data.data_len = rootfh->fhandle3_len;
 args->object.dir.data.data_val = rootfh->fhandle3_val;
 args->object.name = "bunny";
}
