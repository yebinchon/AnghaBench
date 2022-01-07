
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ sltdesc; int address; } ;
struct TYPE_3__ {int address; } ;
union sltentry {TYPE_2__ snorm; TYPE_1__ snormoff; } ;
struct objfile {int dummy; } ;
typedef scalar_t__ sltpointer ;
typedef int CORE_ADDR ;


 scalar_t__ SLT_END ;
 scalar_t__ SLT_EXIT ;
 scalar_t__ SLT_NORMAL ;
 scalar_t__ SLT_NORMAL_OFFSET ;
 union sltentry* hpread_get_slt (scalar_t__,struct objfile*) ;

__attribute__((used)) static CORE_ADDR
hpread_get_location (sltpointer index, struct objfile *objfile)
{
  union sltentry *sl_bufp;
  int i;


  sl_bufp = hpread_get_slt (index, objfile);

  if (sl_bufp->snorm.sltdesc == SLT_END)
    {

      for (i = 0; ((sl_bufp->snorm.sltdesc != SLT_NORMAL) &&
     (sl_bufp->snorm.sltdesc != SLT_NORMAL_OFFSET) &&
     (sl_bufp->snorm.sltdesc != SLT_EXIT)); i++)
 sl_bufp = hpread_get_slt (index - i, objfile);
      if (sl_bufp->snorm.sltdesc == SLT_NORMAL_OFFSET)
 return sl_bufp->snormoff.address;
      else
 return sl_bufp->snorm.address;
    }


  for (i = 0; ((sl_bufp->snorm.sltdesc != SLT_NORMAL) &&
        (sl_bufp->snorm.sltdesc != SLT_NORMAL_OFFSET) &&
        (sl_bufp->snorm.sltdesc != SLT_EXIT)); i++)
    sl_bufp = hpread_get_slt (index + i, objfile);
  if (sl_bufp->snorm.sltdesc == SLT_NORMAL_OFFSET)
    return sl_bufp->snormoff.address;
  else
    return sl_bufp->snorm.address;
}
