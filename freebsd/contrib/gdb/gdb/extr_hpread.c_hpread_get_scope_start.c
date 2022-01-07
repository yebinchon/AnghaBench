
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {unsigned long index; } ;
struct TYPE_5__ {TYPE_1__ dnttp; } ;
struct TYPE_6__ {TYPE_2__ backptr; } ;
union sltentry {TYPE_3__ sspec; } ;
struct objfile {int dummy; } ;
typedef int sltpointer ;


 union sltentry* hpread_get_slt (int ,struct objfile*) ;

__attribute__((used)) static unsigned long
hpread_get_scope_start (sltpointer index, struct objfile *objfile)
{
  union sltentry *sl_bufp;

  sl_bufp = hpread_get_slt (index, objfile);
  return sl_bufp->sspec.backptr.dnttp.index;
}
