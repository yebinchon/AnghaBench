
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SB_append_char (int ,int) ;
 int* SB_contents (int ) ;
 int SB_length (int ) ;
 int SB_reset (int ) ;
 int SB_set_length (int ,size_t) ;
 int conf_linenum ;
 int conf_next_low () ;
 int current_linenum ;
 scalar_t__ is_ws (int) ;
 int line_builder ;

__attribute__((used)) static int
conf_next_line(void)
{
 for (;;) {
  int c;
  int lcwb;

  SB_reset(line_builder);






  for (;;) {
   c = conf_next_low();
   if (c < 0) {
    return -1;
   }
   if (is_ws(c)) {
    continue;
   }
   if (c == ';') {
    for (;;) {
     c = conf_next_low();
     if (c < 0) {
      return -1;
     }
     if (c == '\n') {
      break;
     }
    }
    continue;
   }
   break;
  }





  current_linenum = conf_linenum;
  lcwb = (c == '\\');
  SB_append_char(line_builder, c);
  for (;;) {
   c = conf_next_low();
   if (c < 0) {
    break;
   }
   if (lcwb) {
    if (c == '\n') {
     SB_set_length(line_builder,
      SB_length(line_builder) - 1);
    }
    lcwb = 0;
    continue;
   }
   if (c == '\n') {
    break;
   } else if (c == '\\') {
    lcwb = 1;
   }
   SB_append_char(line_builder, c);
  }




  for (;;) {
   size_t u;

   u = SB_length(line_builder);
   if (u == 0 || !is_ws(
    SB_contents(line_builder)[u - 1]))
   {
    break;
   }
   SB_set_length(line_builder, u - 1);
  }






  if (SB_length(line_builder) > 0) {
   return 0;
  }
 }
}
