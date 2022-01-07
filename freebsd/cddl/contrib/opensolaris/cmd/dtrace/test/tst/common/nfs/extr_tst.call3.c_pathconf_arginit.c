
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int fhandle3_val; int fhandle3_len; } ;
struct TYPE_5__ {int data_val; int data_len; } ;
struct TYPE_6__ {TYPE_1__ data; } ;
struct TYPE_7__ {TYPE_2__ object; } ;
typedef TYPE_3__ PATHCONF3args ;


 TYPE_4__* rootfh ;

__attribute__((used)) static void
pathconf_arginit(void *argp)
{
 PATHCONF3args *args = argp;

 args->object.data.data_len = rootfh->fhandle3_len;
 args->object.data.data_val = rootfh->fhandle3_val;
}
