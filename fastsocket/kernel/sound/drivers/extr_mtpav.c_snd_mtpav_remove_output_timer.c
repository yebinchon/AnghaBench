
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtpav {int timer; } ;


 int del_timer (int *) ;

__attribute__((used)) static void snd_mtpav_remove_output_timer(struct mtpav *chip)
{
 del_timer(&chip->timer);
}
