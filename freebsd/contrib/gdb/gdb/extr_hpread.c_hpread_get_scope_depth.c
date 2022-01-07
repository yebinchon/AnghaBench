
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ index; } ;
struct TYPE_7__ {TYPE_2__ dnttp; } ;
struct TYPE_8__ {TYPE_3__ beginscope; } ;
struct TYPE_5__ {int kind; } ;
union dnttentry {TYPE_4__ dend; TYPE_1__ dblock; } ;
struct objfile {int dummy; } ;
struct dntt_type_block {int dummy; } ;
 char* LNTT (struct objfile*) ;
 union dnttentry* hpread_get_lntt (int,struct objfile*) ;

__attribute__((used)) static int
hpread_get_scope_depth (union dnttentry *dn_bufp, struct objfile *objfile,
   int report_nested)
{
  int index;
  union dnttentry *dn_tmp;
  short depth = 0;

  return 0;


  index = (((char *) dn_bufp) - LNTT (objfile)) / (sizeof (struct dntt_type_block));

  while (--index >= 0)
    {
      dn_tmp = hpread_get_lntt (index, objfile);
      switch (dn_tmp->dblock.kind)
 {
 case 129:
   return depth;
 case 131:

   index = (int) dn_tmp->dend.beginscope.dnttp.index;
   break;
 case 135:
 case 130:
 case 132:
 case 128:
 case 133:
 case 134:
   depth++;
   if (report_nested)
     return 1;
   break;
 default:
   break;
 }
    }
  return depth;
}
