
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct auto_out_pin {int pin; } ;
typedef int list ;
typedef int hda_nid_t ;


 int compare_seq ;
 int sort (struct auto_out_pin*,int,int,int ,int *) ;

__attribute__((used)) static void sort_pins_by_sequence(hda_nid_t *pins, struct auto_out_pin *list,
      int num_pins)
{
 int i;
 sort(list, num_pins, sizeof(list[0]), compare_seq, ((void*)0));
 for (i = 0; i < num_pins; i++)
  pins[i] = list[i].pin;
}
