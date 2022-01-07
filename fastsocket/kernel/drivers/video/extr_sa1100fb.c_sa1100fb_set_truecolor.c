
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;


 int ASSABET_BCR_LCD_12RGB ;
 int ASSABET_BCR_clear (int ) ;
 int ASSABET_BCR_set (int ) ;
 scalar_t__ machine_is_assabet () ;

__attribute__((used)) static inline void sa1100fb_set_truecolor(u_int is_true_color)
{
 if (machine_is_assabet()) {

  if (is_true_color)
   ASSABET_BCR_set(ASSABET_BCR_LCD_12RGB);
  else
   ASSABET_BCR_clear(ASSABET_BCR_LCD_12RGB);







 }
}
