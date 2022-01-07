
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WINDOW ;


 int MAX_LEN ;
 int getyx (int *,int,int) ;
 char* strchr (char*,char) ;
 int strcpy (char*,char const*) ;
 int strlen (char*) ;
 int waddstr (int *,char*) ;
 int wmove (int *,int,int) ;

void print_autowrap(WINDOW * win, const char *prompt, int width, int y, int x)
{
 int newl, cur_x, cur_y;
 int i, prompt_len, room, wlen;
 char tempstr[MAX_LEN + 1], *word, *sp, *sp2;

 strcpy(tempstr, prompt);

 prompt_len = strlen(tempstr);




 for (i = 0; i < prompt_len; i++) {
  if (tempstr[i] == '\n')
   tempstr[i] = ' ';
 }

 if (prompt_len <= width - x * 2) {
  wmove(win, y, (width - prompt_len) / 2);
  waddstr(win, tempstr);
 } else {
  cur_x = x;
  cur_y = y;
  newl = 1;
  word = tempstr;
  while (word && *word) {
   sp = strchr(word, ' ');
   if (sp)
    *sp++ = 0;




   room = width - cur_x;
   wlen = strlen(word);
   if (wlen > room ||
       (newl && wlen < 4 && sp
        && wlen + 1 + strlen(sp) > room
        && (!(sp2 = strchr(sp, ' '))
     || wlen + 1 + (sp2 - sp) > room))) {
    cur_y++;
    cur_x = x;
   }
   wmove(win, cur_y, cur_x);
   waddstr(win, word);
   getyx(win, cur_y, cur_x);
   cur_x++;
   if (sp && *sp == ' ') {
    cur_x++;
    while (*++sp == ' ') ;
    newl = 1;
   } else
    newl = 0;
   word = sp;
  }
 }
}
