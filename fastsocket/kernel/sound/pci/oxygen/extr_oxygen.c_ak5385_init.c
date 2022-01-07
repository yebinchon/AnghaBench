
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct oxygen {int card; } ;


 int GPIO_AK5385_DFS_MASK ;
 int OXYGEN_GPIO_CONTROL ;
 int OXYGEN_GPIO_DATA ;
 int oxygen_clear_bits16 (struct oxygen*,int ,int ) ;
 int oxygen_set_bits16 (struct oxygen*,int ,int ) ;
 int snd_component_add (int ,char*) ;

__attribute__((used)) static void ak5385_init(struct oxygen *chip)
{
 oxygen_set_bits16(chip, OXYGEN_GPIO_CONTROL, GPIO_AK5385_DFS_MASK);
 oxygen_clear_bits16(chip, OXYGEN_GPIO_DATA, GPIO_AK5385_DFS_MASK);
 snd_component_add(chip->card, "AK5385");
}
