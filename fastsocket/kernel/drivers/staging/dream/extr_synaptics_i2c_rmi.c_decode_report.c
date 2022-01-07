
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct synaptics_ts_data {int flags; int* max; int** snap_state; int* snap_down_off; int* snap_down; int* snap_up_off; int* snap_up; int* snap_down_on; int* snap_up_on; int input_dev; } ;


 int ABS_HAT0X ;
 int ABS_HAT0Y ;
 int ABS_PRESSURE ;
 int ABS_TOOL_WIDTH ;
 int ABS_X ;
 int ABS_Y ;
 int BTN_2 ;
 int BTN_TOUCH ;
 int SYNAPTICS_FLIP_X ;
 int SYNAPTICS_SNAP_TO_INACTIVE_EDGE ;
 int SYNAPTICS_SWAP_XY ;
 int input_report_abs (int ,int ,int) ;
 int input_report_key (int ,int ,int) ;
 int input_sync (int ) ;
 int swap (int,int) ;

__attribute__((used)) static void decode_report(struct synaptics_ts_data *ts, u8 *buf)
{
 int pos[2][2];
 int f, a;
 int base = 2;
 int z = buf[1];
 int w = buf[0] >> 4;
 int finger = buf[0] & 7;
 int finger2_pressed;

 for (f = 0; f < 2; f++) {
  u32 flip_flag = SYNAPTICS_FLIP_X;
  for (a = 0; a < 2; a++) {
   int p = buf[base + 1];
   p |= (u16)(buf[base] & 0x1f) << 8;
   if (ts->flags & flip_flag)
    p = ts->max[a] - p;
   if (ts->flags & SYNAPTICS_SNAP_TO_INACTIVE_EDGE) {
    if (ts->snap_state[f][a]) {
     if (p <= ts->snap_down_off[a])
      p = ts->snap_down[a];
     else if (p >= ts->snap_up_off[a])
      p = ts->snap_up[a];
     else
      ts->snap_state[f][a] = 0;
    } else {
     if (p <= ts->snap_down_on[a]) {
      p = ts->snap_down[a];
      ts->snap_state[f][a] = 1;
     } else if (p >= ts->snap_up_on[a]) {
      p = ts->snap_up[a];
      ts->snap_state[f][a] = 1;
     }
    }
   }
   pos[f][a] = p;
   base += 2;
   flip_flag <<= 1;
  }
  base += 2;
  if (ts->flags & SYNAPTICS_SWAP_XY)
   swap(pos[f][0], pos[f][1]);
 }
 if (z) {
  input_report_abs(ts->input_dev, ABS_X, pos[0][0]);
  input_report_abs(ts->input_dev, ABS_Y, pos[0][1]);
 }
 input_report_abs(ts->input_dev, ABS_PRESSURE, z);
 input_report_abs(ts->input_dev, ABS_TOOL_WIDTH, w);
 input_report_key(ts->input_dev, BTN_TOUCH, finger);
 finger2_pressed = finger > 1 && finger != 7;
 input_report_key(ts->input_dev, BTN_2, finger2_pressed);
 if (finger2_pressed) {
  input_report_abs(ts->input_dev, ABS_HAT0X, pos[1][0]);
  input_report_abs(ts->input_dev, ABS_HAT0Y, pos[1][1]);
 }
 input_sync(ts->input_dev);
}
