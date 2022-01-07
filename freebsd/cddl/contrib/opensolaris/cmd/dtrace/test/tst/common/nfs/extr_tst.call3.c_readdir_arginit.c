
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {int fhandle3_val; int fhandle3_len; } ;
struct TYPE_6__ {int data_val; int data_len; } ;
struct TYPE_7__ {TYPE_1__ data; } ;
struct TYPE_8__ {int count; TYPE_2__ dir; } ;
typedef TYPE_3__ READDIR3args ;


 int bzero (TYPE_3__*,int) ;
 TYPE_4__* rootfh ;

__attribute__((used)) static void
readdir_arginit(void *argp)
{
 READDIR3args *args = argp;

 bzero(args, sizeof (*args));
 args->dir.data.data_len = rootfh->fhandle3_len;
 args->dir.data.data_val = rootfh->fhandle3_val;
 args->count = 1024;
}
