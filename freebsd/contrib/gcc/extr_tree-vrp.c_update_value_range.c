
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * equiv; int max; int min; int type; } ;
typedef TYPE_1__ value_range_t ;
typedef int tree ;


 int BITMAP_FREE (int *) ;
 TYPE_1__* get_value_range (int ) ;
 int set_value_range (TYPE_1__*,int ,int ,int ,int *) ;
 int vrp_bitmap_equal_p (int *,int *) ;
 int vrp_operand_equal_p (int ,int ) ;

__attribute__((used)) static inline bool
update_value_range (tree var, value_range_t *new_vr)
{
  value_range_t *old_vr;
  bool is_new;


  old_vr = get_value_range (var);
  is_new = old_vr->type != new_vr->type
    || !vrp_operand_equal_p (old_vr->min, new_vr->min)
    || !vrp_operand_equal_p (old_vr->max, new_vr->max)
    || !vrp_bitmap_equal_p (old_vr->equiv, new_vr->equiv);

  if (is_new)
    set_value_range (old_vr, new_vr->type, new_vr->min, new_vr->max,
              new_vr->equiv);

  BITMAP_FREE (new_vr->equiv);
  new_vr->equiv = ((void*)0);

  return is_new;
}
