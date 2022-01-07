
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int get_abmon (int) ;
 size_t mbswidth (int ) ;
 size_t month_max_size ;
 size_t* padding_for_month ;

__attribute__((used)) static void
compute_abbreviated_month_size(void)
{
 int i;
 size_t width;
 size_t months_width[12];

 for (i = 0; i < 12; i++) {
  width = mbswidth(get_abmon(i));
  if (width == (size_t)-1) {
   month_max_size = -1;
   return;
  }
  months_width[i] = width;
  if (width > month_max_size)
   month_max_size = width;
 }

 for (i = 0; i < 12; i++)
  padding_for_month[i] = month_max_size - months_width[i];
}
