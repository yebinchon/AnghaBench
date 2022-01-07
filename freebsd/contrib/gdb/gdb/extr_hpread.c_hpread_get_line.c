
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long line; } ;
union sltentry {TYPE_1__ snorm; } ;
struct objfile {int dummy; } ;
typedef int sltpointer ;


 union sltentry* hpread_get_slt (int ,struct objfile*) ;

__attribute__((used)) static unsigned long
hpread_get_line (sltpointer index, struct objfile *objfile)
{
  union sltentry *sl_bufp;

  sl_bufp = hpread_get_slt (index, objfile);
  return sl_bufp->snorm.line;
}
