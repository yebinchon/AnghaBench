
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int line_length; int * next_line; } ;
struct TYPE_3__ {int line_length; } ;


 int FALSE ;
 int TRUE ;
 TYPE_2__* curr_line ;
 unsigned char* d_line ;
 int delete (int ) ;
 TYPE_1__* dlt_line ;
 int free (unsigned char*) ;
 unsigned char* malloc (int) ;
 unsigned char* point ;
 int position ;
 int right (int ) ;
 int text_changes ;
 int text_win ;
 int wclrtoeol (int ) ;

void
del_line()
{
 unsigned char *dl1;
 unsigned char *dl2;
 int tposit;

 if (d_line != ((void*)0))
  free(d_line);
 d_line = malloc(curr_line->line_length);
 dl1 = d_line;
 dl2 = point;
 tposit = position;
 while (tposit < curr_line->line_length)
 {
  *dl1 = *dl2;
  dl1++;
  dl2++;
  tposit++;
 }
 dlt_line->line_length = 1 + tposit - position;
 *dl1 = '\0';
 *point = '\0';
 curr_line->line_length = position;
 wclrtoeol(text_win);
 if (curr_line->next_line != ((void*)0))
 {
  right(FALSE);
  delete(FALSE);
 }
 text_changes = TRUE;
}
