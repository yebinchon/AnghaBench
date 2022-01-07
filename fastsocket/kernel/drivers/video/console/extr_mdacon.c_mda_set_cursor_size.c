
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MDA_CURSOR_OFF ;
 int mda_cursor_size_from ;
 int mda_cursor_size_to ;
 int write_mda_b (int,int) ;

__attribute__((used)) static inline void mda_set_cursor_size(int from, int to)
{
 if (mda_cursor_size_from==from && mda_cursor_size_to==to)
  return;

 if (from > to) {
  write_mda_b(MDA_CURSOR_OFF, 0x0a);
 } else {
  write_mda_b(from, 0x0a);
  write_mda_b(to, 0x0b);
 }

 mda_cursor_size_from = from;
 mda_cursor_size_to = to;
}
