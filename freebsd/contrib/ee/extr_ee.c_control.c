
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TRUE ;
 int ascii_code_str ;
 int atoi (char*) ;
 int bol () ;
 int bottom () ;
 int command_prompt () ;
 int del_char () ;
 int del_line () ;
 int del_word () ;
 int delete (int ) ;
 int down () ;
 int eol () ;
 int free (char*) ;
 char* get_string (int ,int ) ;
 scalar_t__ horiz_offset ;
 int in ;
 int insert (int) ;
 int insert_line (int ) ;
 scalar_t__ last_line ;
 int left (int ) ;
 int main_menu ;
 int max (int,scalar_t__) ;
 int menu_op (int ) ;
 int move_rel (unsigned char,int ) ;
 int right (int ) ;
 scalar_t__ scr_horz ;
 int scr_vert ;
 int search (int ) ;
 int search_prompt () ;
 int text_win ;
 int top () ;
 int undel_char () ;
 int undel_line () ;
 int undel_word () ;
 int up () ;
 int wmove (int ,int ,scalar_t__) ;

void
control()
{
 char *string;

 if (in == 1)
 {
  string = get_string(ascii_code_str, TRUE);
  if (*string != '\0')
  {
   in = atoi(string);
   wmove(text_win, scr_vert, (scr_horz - horiz_offset));
   insert(in);
  }
  free(string);
 }
 else if (in == 2)
  bottom();
 else if (in == 3)
 {
  command_prompt();
 }
 else if (in == 4)
  down();
 else if (in == 5)
  search_prompt();
 else if (in == 6)
  undel_char();
 else if (in == 7)
  bol();
 else if (in == 8)
  delete(TRUE);
 else if (in == 9)
  ;
 else if (in == 10)
  insert_line(TRUE);
 else if (in == 11)
  del_char();
 else if (in == 12)
  left(TRUE);
 else if (in == 13)
  insert_line(TRUE);
 else if (in == 14)
  move_rel('d', max(5, (last_line - 5)));
 else if (in == 15)
  eol();
 else if (in == 16)
  move_rel('u', max(5, (last_line - 5)));
 else if (in == 17)
  ;
 else if (in == 18)
  right(TRUE);
 else if (in == 19)
  ;
 else if (in == 20)
  top();
 else if (in == 21)
  up();
 else if (in == 22)
  undel_word();
 else if (in == 23)
  del_word();
 else if (in == 24)
  search(TRUE);
 else if (in == 25)
  del_line();
 else if (in == 26)
  undel_line();
 else if (in == 27)
 {
  menu_op(main_menu);
 }
}
