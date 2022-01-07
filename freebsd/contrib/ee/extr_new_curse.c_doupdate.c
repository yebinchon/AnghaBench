
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


struct _line {char* row; char* attributes; scalar_t__ last_char; int number; void* changed; struct _line* next_screen; struct _line* prev_screen; } ;
struct TYPE_10__ {int Num_cols; int Num_lines; int SR; int LY; int LX; struct _line* first_line; scalar_t__ scroll_down; scalar_t__ scroll_up; } ;
typedef TYPE_1__ WINDOW ;


 int A_NC_BIG5 ;
 scalar_t__* Booleans ;
 int CLEAR_TO_EOL (TYPE_1__*,int,int) ;
 int Char_out (char,char,char*,char*,int) ;
 int Comp_line (struct _line*,struct _line*) ;
 int Curr_x ;
 int Curr_y ;
 struct _line* Delete_line (int,int,TYPE_1__*) ;
 void* FALSE ;
 struct _line* Insert_line (int,int,TYPE_1__*) ;
 int LINES ;
 int Position (TYPE_1__*,int,int) ;
 char Repaint_screen ;
 char STAND ;
 int String_Out (int *,int*,int) ;
 int ** String_table ;
 void* TRUE ;
 int attribute_off () ;
 size_t ce__ ;
 int check_delete (TYPE_1__*,int,int,struct _line*,struct _line*) ;
 int check_insert (TYPE_1__*,int,int,struct _line*,struct _line*) ;
 size_t cl__ ;
 size_t cs__ ;
 TYPE_1__* curscr ;
 size_t dc__ ;
 scalar_t__ highbitset (char) ;
 size_t ic__ ;
 size_t im__ ;
 int min (int,int) ;
 int nc_attributes ;
 scalar_t__ nc_scrolling_ability ;
 int putchar (char) ;
 struct _line* top_of_win ;
 void** virtual_lines ;
 TYPE_1__* virtual_scr ;
 size_t xs__ ;

void
doupdate()
{
 WINDOW *window;
 int similar;
 int diff;
 int begin_old, begin_new;
 int end_old, end_new;
 int count1, j;
 int from_top, tmp_ft, offset;
 int changed;
 int first_time;
 int first_same;
 int last_same;
 int list[10];
 int bottom;

 struct _line *curr;
 struct _line *virt;
 struct _line *old;

 struct _line *new;

 struct _line *old1, *new1;

 char *cur_lin;
 char *vrt_lin;
 char *cur_att;
 char *vrt_att;
 char *att1, *att2;
 char *c1, *c2;

 char NC_chinese = FALSE;

 window = virtual_scr;

 if ((nc_attributes & A_NC_BIG5) != 0)
  NC_chinese = TRUE;

 if (Repaint_screen)
 {
  if (String_table[cl__])
   String_Out(String_table[cl__], ((void*)0), 0);
  else
  {
   from_top = 0;
   while (from_top < LINES)
   {
    Position(curscr, from_top, 0);
    if (String_table[ce__] != ((void*)0))
     String_Out(String_table[ce__], ((void*)0), 0);
    else
    {
     for (j = 0; j < window->Num_cols; j++)
      putchar(' ');
    }
    from_top++;
   }
  }
  for (from_top = 0, curr = curscr->first_line; from_top < curscr->Num_lines; from_top++, curr = curr->next_screen)
  {
   Position(curscr, from_top, 0);
   for (j = 0; (curr->row[j] != '\0') && (j < curscr->Num_cols); j++)
   {
    Char_out(curr->row[j], curr->attributes[j], curr->row, curr->attributes, j);
   }
   if (STAND)
   {
    STAND = FALSE;
    Position(curscr, from_top, j);
    attribute_off();
   }
  }
  Repaint_screen = FALSE;
 }

 similar = 0;
 diff = FALSE;
 top_of_win = curscr->first_line;

 for (from_top = 0, curr = top_of_win, virt = window->first_line;
   from_top < window->Num_lines; from_top++)
 {
  virtual_lines[from_top] = TRUE;
  if ((similar = Comp_line(curr, virt)) > 0)
  {
   virtual_lines[from_top] = FALSE;
   diff = TRUE;
  }
  curr = curr->next_screen;
  virt = virt->next_screen;
 }

 from_top = 0;
 virt = window->first_line;
 curr = top_of_win;
 similar = 0;



 if (diff)
 {
  last_same = -1;
  changed = FALSE;
  for (first_same = window->Num_lines;
      (first_same > from_top) && (virtual_lines[first_same - 1]);
       first_same--)
   ;
  for (last_same = 0;
      (last_same < window->Num_lines) && (virtual_lines[last_same]== FALSE);
       last_same++)
   ;
  while ((from_top < first_same) && nc_scrolling_ability)

  {

   if (from_top >= last_same)
   {
    for (last_same = from_top;
         (last_same < window->Num_lines) &&
         (virtual_lines[last_same] == FALSE);
          last_same++)
     ;
   }
   if (!virtual_lines[from_top])
   {
    diff = TRUE;



    for (tmp_ft = from_top+1, old = curr->next_screen;
     ((window->scroll_up) && (diff) &&
     (tmp_ft < last_same) &&
     (!virtual_lines[tmp_ft]));
      tmp_ft++)
    {
     if ((Comp_line(old, virt) == -1) && (!virtual_lines[from_top]))
     {





      for (bottom = tmp_ft, old1 = old,
           new1 = virt, count1 = 0;
       (bottom < window->Num_lines) &&
        (Comp_line(old1, new1) <= 0);
        bottom++, old1 = old1->next_screen,
        new1 = new1->next_screen,
        count1++)
       ;
      if (count1 > 3)
      {
       if (String_table[cs__])
       {
        list[1] = from_top;
        list[0] = min((bottom - 1), (window->Num_lines - 1));
        String_Out(String_table[cs__], list, 2);
        Curr_y = Curr_x = -1;
       }

       for (offset = (tmp_ft - from_top); (offset > 0); offset--)
       {
        old = Delete_line(from_top, min((bottom - 1), (window->Num_lines - 1)), window);
        diff = FALSE;
       }

       if (String_table[cs__])
       {
        list[1] = 0;
        list[0] = LINES - 1;
        String_Out(String_table[cs__], list, 2);
        Curr_y = Curr_x = -1;
       }

       top_of_win = curscr->first_line;
       curr = top_of_win;
       for (offset = 0; offset < from_top; offset++)
        curr = curr->next_screen;
       for (offset = from_top, old=curr, new=virt;
          offset < window->Num_lines;
          old=old->next_screen, new=new->next_screen,
          offset++)
       {
        similar = Comp_line(old, new);
        virtual_lines[offset] = (similar > 0 ? FALSE : TRUE);
       }
      }
     }
     else
      old = old->next_screen;
    }



    for (tmp_ft = from_top-1, old = curr->prev_screen;
     ((window->scroll_down) && (tmp_ft >= 0) &&
     (diff) &&
     (!virtual_lines[tmp_ft]));
       tmp_ft--)
    {
     if (Comp_line(old, virt) == -1)
     {





      for (bottom = from_top, old1 = old,
           new1 = virt, count1 = 0;
       (bottom < window->Num_lines) &&
        (Comp_line(old1, new1) <= 0);
        bottom++, old1 = old1->next_screen,
        new1 = new1->next_screen,
        count1++)
       ;
      if (count1 > 3)
      {
       if (String_table[cs__])
       {
        list[1] = tmp_ft;
        list[0] = min((bottom - 1), (window->Num_lines - 1));
        String_Out(String_table[cs__], list, 2);
        Curr_y = Curr_x = -1;
       }

       for (offset = (from_top - tmp_ft); (offset > 0); offset--)
       {
        old = Insert_line(tmp_ft, min((bottom - 1), (window->Num_lines -1)), window);
        diff = FALSE;
       }

       if (String_table[cs__])
       {
        list[1] = 0;
        list[0] = LINES - 1;
        String_Out(String_table[cs__], list, 2);
        Curr_y = Curr_x = -1;
       }

       top_of_win = curscr->first_line;
       curr = top_of_win;
       for (offset = 0; offset < from_top; offset++)
        curr = curr->next_screen;
       for (offset = from_top, old=curr, new=virt;
          offset < window->Num_lines;
          old=old->next_screen, new=new->next_screen,
          offset++)
       {
        similar = Comp_line(old, new);
        virtual_lines[offset] = (similar > 0 ? FALSE : TRUE);
       }
      }
     }
     else
      old = old->prev_screen;
    }
   }
   from_top++;
   curr = curr->next_screen;
   virt = virt->next_screen;
  }
 }







 for (from_top = 0, curr = curscr->first_line; from_top < window->SR; from_top++)
  curr = curr->next_screen;
 top_of_win = curr;
 for (from_top = 0, curr = top_of_win, virt = window->first_line; from_top < window->Num_lines; from_top++, curr = curr->next_screen, virt = virt->next_screen)
 {
  if (((String_table[ic__]) || (String_table[im__])) &&
      (String_table[dc__]) && (curr->row[0] != '\0') &&
      (!NC_chinese))
  {
   j = 0;
   first_time = TRUE;
   vrt_lin = virt->row;
   vrt_att = virt->attributes;
   cur_lin = curr->row;
   cur_att = curr->attributes;
   while ((vrt_lin[j] != '\0') && (j < window->Num_cols))
   {
    if ((STAND) && (Booleans[xs__]))
    {
     while ((vrt_lin[j] == cur_lin[j]) && (vrt_att[j] == cur_att[j]) && (vrt_lin[j] != '\0') && (vrt_att[j]))
      j++;
     if ((STAND) && (!vrt_att[j]))
     {
      STAND = FALSE;
      Position(window, from_top, j);
      attribute_off();
      attribute_off();
     }
    }
    else
    {
     while ((vrt_lin[j] == cur_lin[j]) && (vrt_att[j] == cur_att[j]) && (vrt_lin[j] != '\0'))
      j++;
    }
    if ((vrt_att[j] != cur_att[j]) && (cur_att[j]) && (Booleans[xs__]))
    {
     Position(window, from_top, j);

     attribute_off();
     attribute_off();
    }
    if (vrt_lin[j] != '\0')
    {
     begin_new = j;
     begin_old = j;
     end_old = j;
     end_new = j;
     if ((first_time) && (virt->changed))
     {
      if (curr->last_char <= virt->last_char)
       changed = check_insert(window, from_top, j, virt, curr);
     }
     changed = check_delete(window, from_top, j, virt, curr);
     first_time = FALSE;
     virt->changed = FALSE;
     if (!changed)
      changed = check_insert(window, from_top, j, virt, curr);
     if (((!changed) || (cur_lin[j] != vrt_lin[j]) || (cur_att[j] != vrt_att[j])) && (j < window->Num_cols))
     {
      if ((vrt_lin[j] == ' ') && (cur_lin[j] == '\0') && (vrt_att[j] == cur_att[j]))
       cur_lin[j] = ' ';
      else
      {
       Position(window, from_top, j);
       Char_out(vrt_lin[j], vrt_att[j], cur_lin, cur_att, j);
      }
     }
     if ((vrt_lin[j] != '\0'))
      j++;
    }
    if ((STAND) && (!vrt_att[j]))
    {
     STAND = FALSE;
     Position(window, from_top, j);
     attribute_off();
    }
   }
   if ((vrt_lin[j] == '\0') && (cur_lin[j] != '\0'))
   {
    Position(window, from_top, j);
    CLEAR_TO_EOL(window, from_top, j);
   }
  }
  else
  {
   j = 0;
   c1 = curr->row;
   att1 = curr->attributes;
   c2 = virt->row;
   att2 = virt->attributes;
   while ((j < window->Num_cols) && (c2[j] != '\0'))
   {
    while ((c1[j] == c2[j]) && (att1[j] == att2[j]) && (j < window->Num_cols) && (c2[j] != '\0'))
     j++;






    if ((NC_chinese) && (highbitset(c1[j - 1])))
     j--;
    begin_old = j;
    begin_new = j;
    if ((j < window->Num_cols) && (c2[j] != '\0'))
    {
     Position(window, from_top, begin_old);
     CLEAR_TO_EOL(window, from_top, j);
     Position(window, from_top, begin_old);
     for (j = begin_old; (c2[j] != '\0') && (j < window->Num_cols); j++)
      Char_out(c2[j], att2[j], c1, att1, j);
    }
   }
   if ((c2[j] == '\0') && (c1[j] != '\0'))
   {
    Position(window, from_top, j);
    CLEAR_TO_EOL(window, from_top, j);
   }
  }
  if (STAND)
  {
   STAND = FALSE;
   Position(window, from_top, j);
   attribute_off();
  }
  virt->number = from_top;
 }
 Position(window, window->LY, window->LX);
}
