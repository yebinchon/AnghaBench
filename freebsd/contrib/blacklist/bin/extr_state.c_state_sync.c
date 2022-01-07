
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int (* sync ) (TYPE_1__*,int ) ;} ;
typedef TYPE_1__ DB ;


 int stub1 (TYPE_1__*,int ) ;

int
state_sync(DB *db)
{
 return (*db->sync)(db, 0);
}
