
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_14__ {int fhandle3_val; int fhandle3_len; } ;
struct TYPE_8__ {int data_val; int data_len; } ;
struct TYPE_9__ {TYPE_1__ data; } ;
struct TYPE_10__ {char* name; TYPE_2__ dir; } ;
struct TYPE_11__ {int data_val; int data_len; } ;
struct TYPE_12__ {TYPE_4__ data; } ;
struct TYPE_13__ {TYPE_3__ link; TYPE_5__ file; } ;
typedef TYPE_6__ LINK3args ;


 TYPE_7__* rootfh ;

__attribute__((used)) static void
link_arginit(void *argp)
{
 LINK3args *args = argp;

 args->file.data.data_len = rootfh->fhandle3_len;
 args->file.data.data_val = rootfh->fhandle3_val;
 args->link.dir.data.data_len = rootfh->fhandle3_len;
 args->link.dir.data.data_val = rootfh->fhandle3_val;
 args->link.name = "samf";
}
