
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct oxygen {int card; } ;


 int ak4396_init (struct oxygen*) ;
 int snd_component_add (int ,char*) ;

__attribute__((used)) static void fantasia_init(struct oxygen *chip)
{
 ak4396_init(chip);
 snd_component_add(chip->card, "CS5340");
}
