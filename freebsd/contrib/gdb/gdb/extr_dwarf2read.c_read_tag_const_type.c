
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct type {int dummy; } ;
struct dwarf2_cu {int dummy; } ;
struct die_info {int type; } ;


 int TYPE_RESTRICT (struct type*) ;
 int TYPE_VOLATILE (struct type*) ;
 struct type* die_type (struct die_info*,struct dwarf2_cu*) ;
 int make_cvr_type (int,int ,int ,struct type*,int ) ;

__attribute__((used)) static void
read_tag_const_type (struct die_info *die, struct dwarf2_cu *cu)
{
  struct type *base_type;

  if (die->type)
    {
      return;
    }

  base_type = die_type (die, cu);
  die->type = make_cvr_type (1, TYPE_VOLATILE (base_type),
                             TYPE_RESTRICT (base_type), base_type, 0);
}
