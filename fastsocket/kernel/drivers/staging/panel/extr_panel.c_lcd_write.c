
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct file {int dummy; } ;
typedef int ssize_t ;
typedef int loff_t ;
struct TYPE_2__ {int * function; } ;


 int EFAULT ;
 scalar_t__ FLASH_LIGHT_TEMPO ;

 size_t LCD_ESCAPE_LEN ;
 int LCD_FLAG_B ;
 int LCD_FLAG_C ;
 int LCD_FLAG_D ;
 int LCD_FLAG_F ;
 int LCD_FLAG_L ;
 int LCD_FLAG_N ;
 scalar_t__ get_user (char,char const*) ;
 int in_interrupt () ;
 int isdigit (char) ;
 scalar_t__ lcd_addr_x ;
 int lcd_addr_y ;
 int lcd_backlight (int) ;
 scalar_t__ lcd_bwidth ;
 int lcd_clear_fast () ;
 char* lcd_escape ;
 size_t lcd_escape_len ;
 int lcd_flags ;
 int lcd_gotoxy () ;
 int lcd_height ;
 int lcd_init_display () ;
 int lcd_left_shift ;
 int lcd_print (char) ;
 scalar_t__ lcd_width ;
 int lcd_write_cmd (int) ;
 int lcd_write_data (unsigned char) ;
 scalar_t__ light_tempo ;
 TYPE_1__ scan_timer ;
 int schedule () ;
 int * strchr (char*,char) ;
 int strcmp (char*,char*) ;

__attribute__((used)) static ssize_t lcd_write(struct file *file,
    const char *buf, size_t count, loff_t *ppos)
{

 const char *tmp = buf;
 char c;

 for (; count-- > 0; (ppos ? (*ppos)++ : 0), ++tmp) {
  if (!in_interrupt() && (((count + 1) & 0x1f) == 0))
   schedule();

  if (ppos == ((void*)0) && file == ((void*)0))
   c = *tmp;
  else if (get_user(c, tmp))
   return -EFAULT;


  if ((c != '\n') && lcd_escape_len >= 0) {
   lcd_escape[lcd_escape_len++] = c;
   lcd_escape[lcd_escape_len] = 0;
  } else {
   lcd_escape_len = -1;

   switch (c) {
   case 128:
    lcd_escape_len = 0;
    lcd_escape[lcd_escape_len] = 0;
    break;
   case '\b':
    if (lcd_addr_x > 0) {
     if (lcd_addr_x < lcd_bwidth)
      lcd_write_cmd(0x10);
     lcd_addr_x--;
    }
    lcd_write_data(' ');
    lcd_write_cmd(0x10);
    break;
   case '\014':
    lcd_clear_fast();
    break;
   case '\n':

    for (; lcd_addr_x < lcd_bwidth; lcd_addr_x++)
     lcd_write_data(' ');
    lcd_addr_x = 0;
    lcd_addr_y = (lcd_addr_y + 1) % lcd_height;
    lcd_gotoxy();
    break;
   case '\r':
    lcd_addr_x = 0;
    lcd_gotoxy();
    break;
   case '\t':
    lcd_print(' ');
    break;
   default:
    lcd_print(c);
    break;
   }
  }




  if (lcd_escape_len >= 2) {
   int processed = 0;

   if (!strcmp(lcd_escape, "[2J")) {
    lcd_clear_fast();
    processed = 1;
   } else if (!strcmp(lcd_escape, "[H")) {
    lcd_addr_x = lcd_addr_y = 0;
    lcd_gotoxy();
    processed = 1;
   }

   else if ((lcd_escape_len >= 3) &&
     (lcd_escape[0] == '[') && (lcd_escape[1] == 'L')) {

    char *esc = lcd_escape + 2;
    int oldflags = lcd_flags;


    switch (*esc) {
    case 'D':
     lcd_flags |= LCD_FLAG_D;
     processed = 1;
     break;
    case 'd':
     lcd_flags &= ~LCD_FLAG_D;
     processed = 1;
     break;
    case 'C':
     lcd_flags |= LCD_FLAG_C;
     processed = 1;
     break;
    case 'c':
     lcd_flags &= ~LCD_FLAG_C;
     processed = 1;
     break;
    case 'B':
     lcd_flags |= LCD_FLAG_B;
     processed = 1;
     break;
    case 'b':
     lcd_flags &= ~LCD_FLAG_B;
     processed = 1;
     break;
    case '+':
     lcd_flags |= LCD_FLAG_L;
     processed = 1;
     break;
    case '-':
     lcd_flags &= ~LCD_FLAG_L;
     processed = 1;
     break;
    case '*':
     if (scan_timer.function != ((void*)0)) {
      if (light_tempo == 0
          && ((lcd_flags & LCD_FLAG_L)
       == 0))
       lcd_backlight(1);
      light_tempo = FLASH_LIGHT_TEMPO;
     }
     processed = 1;
     break;
    case 'f':
     lcd_flags &= ~LCD_FLAG_F;
     processed = 1;
     break;
    case 'F':
     lcd_flags |= LCD_FLAG_F;
     processed = 1;
     break;
    case 'n':
     lcd_flags &= ~LCD_FLAG_N;
     processed = 1;
     break;
    case 'N':
     lcd_flags |= LCD_FLAG_N;
     break;

    case 'l':
     if (lcd_addr_x > 0) {
      if (lcd_addr_x < lcd_bwidth)
       lcd_write_cmd(0x10);
      lcd_addr_x--;
     }
     processed = 1;
     break;

    case 'r':
     if (lcd_addr_x < lcd_width) {
      if (lcd_addr_x < (lcd_bwidth - 1))
       lcd_write_cmd(0x14);
      lcd_addr_x++;
     }
     processed = 1;
     break;

    case 'L':
     lcd_left_shift++;
     lcd_write_cmd(0x18);
     processed = 1;
     break;

    case 'R':
     lcd_left_shift--;
     lcd_write_cmd(0x1C);
     processed = 1;
     break;

    case 'k':{
      int x;
      for (x = lcd_addr_x; x < lcd_bwidth; x++)
       lcd_write_data(' ');
      lcd_gotoxy();
      processed = 1;
      break;
     }
    case 'I':
     lcd_init_display();
     lcd_left_shift = 0;
     processed = 1;
     break;

    case 'G': {






      unsigned char cgbytes[8];
      unsigned char cgaddr;
      int cgoffset;
      int shift;
      char value;
      int addr;

      if (strchr(esc, ';') == ((void*)0))
       break;

      esc++;

      cgaddr = *(esc++) - '0';
      if (cgaddr > 7) {
       processed = 1;
       break;
      }

      cgoffset = 0;
      shift = 0;
      value = 0;
      while (*esc && cgoffset < 8) {
       shift ^= 4;
       if (*esc >= '0' && *esc <= '9')
        value |= (*esc - '0') << shift;
       else if (*esc >= 'A' && *esc <= 'Z')
        value |= (*esc - 'A' + 10) << shift;
       else if (*esc >= 'a' && *esc <= 'z')
        value |= (*esc - 'a' + 10) << shift;
       else {
        esc++;
        continue;
       }

       if (shift == 0) {
        cgbytes[cgoffset++] = value;
        value = 0;
       }

       esc++;
      }

      lcd_write_cmd(0x40 | (cgaddr * 8));
      for (addr = 0; addr < cgoffset; addr++)
       lcd_write_data(cgbytes[addr]);

      lcd_gotoxy();
      processed = 1;
      break;
     }
    case 'x':
    case 'y':
     if (strchr(esc, ';') == ((void*)0))
      break;

     while (*esc) {
      if (*esc == 'x') {
       esc++;
       lcd_addr_x = 0;
       while (isdigit(*esc)) {
        lcd_addr_x =
            lcd_addr_x *
            10 + (*esc -
           '0');
        esc++;
       }
      } else if (*esc == 'y') {
       esc++;
       lcd_addr_y = 0;
       while (isdigit(*esc)) {
        lcd_addr_y =
            lcd_addr_y *
            10 + (*esc -
           '0');
        esc++;
       }
      } else
       break;
     }

     lcd_gotoxy();
     processed = 1;
     break;
    }


    if (oldflags != lcd_flags) {

     if ((oldflags ^ lcd_flags) &
         (LCD_FLAG_B | LCD_FLAG_C | LCD_FLAG_D))

      lcd_write_cmd(0x08 |
             ((lcd_flags & LCD_FLAG_D) ? 4 : 0) |
             ((lcd_flags & LCD_FLAG_C) ? 2 : 0) |
             ((lcd_flags & LCD_FLAG_B) ? 1 : 0));

     else if ((oldflags ^ lcd_flags) &
       (LCD_FLAG_F | LCD_FLAG_N))
      lcd_write_cmd(0x30 |
             ((lcd_flags & LCD_FLAG_F) ? 4 : 0) |
             ((lcd_flags & LCD_FLAG_N) ? 8 : 0));

     else if ((oldflags ^ lcd_flags) &
       (LCD_FLAG_L)) {
      if (lcd_flags & (LCD_FLAG_L))
       lcd_backlight(1);
      else if (light_tempo == 0)
       lcd_backlight(0);
     }
    }
   }




   if (processed || (lcd_escape_len >= LCD_ESCAPE_LEN))
    lcd_escape_len = -1;
  }
 }

 return tmp - buf;
}
