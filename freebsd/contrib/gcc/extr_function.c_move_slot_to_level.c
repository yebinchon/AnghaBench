
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct temp_slot {int level; } ;


 int cut_slot_from_list (struct temp_slot*,int ) ;
 int insert_slot_to_list (struct temp_slot*,int ) ;
 int temp_slots_at_level (int) ;

__attribute__((used)) static void
move_slot_to_level (struct temp_slot *temp, int level)
{
  cut_slot_from_list (temp, temp_slots_at_level (temp->level));
  insert_slot_to_list (temp, temp_slots_at_level (level));
  temp->level = level;
}
