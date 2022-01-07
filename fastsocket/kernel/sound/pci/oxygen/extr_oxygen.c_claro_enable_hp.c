
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct oxygen {int dummy; } ;


 int GPIO_CLARO_HP ;
 int OXYGEN_GPIO_CONTROL ;
 int OXYGEN_GPIO_DATA ;
 int msleep (int) ;
 int oxygen_set_bits16 (struct oxygen*,int ,int ) ;

__attribute__((used)) static void claro_enable_hp(struct oxygen *chip)
{
 msleep(300);
 oxygen_set_bits16(chip, OXYGEN_GPIO_CONTROL, GPIO_CLARO_HP);
 oxygen_set_bits16(chip, OXYGEN_GPIO_DATA, GPIO_CLARO_HP);
}
