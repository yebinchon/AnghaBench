
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nameidata {int dummy; } ;
struct filename {int dummy; } ;
struct TYPE_2__ {scalar_t__ total_link_count; } ;


 TYPE_1__* current ;
 int link_path_walk (struct filename*,struct nameidata*) ;

__attribute__((used)) static int path_walk(struct filename *name, struct nameidata *nd)
{
 current->total_link_count = 0;
 return link_path_walk(name, nd);
}
