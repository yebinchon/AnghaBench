
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int line_length; } ;
struct TYPE_4__ {int line_length; } ;


 int TRUE ;
 TYPE_1__* curr_line ;
 unsigned char* d_line ;
 TYPE_2__* dlt_line ;
 int draw_line (int ,int ,unsigned char*,int ,int ) ;
 int insert_line (int ) ;
 int left (int ) ;
 unsigned char* point ;
 int position ;
 unsigned char* resiz_line (int,TYPE_1__*,int ) ;
 int scr_horz ;
 int scr_vert ;

void
undel_line()
{
 unsigned char *ud1;
 unsigned char *ud2;
 int tposit;

 if (dlt_line->line_length == 0)
  return;

 insert_line(TRUE);
 left(TRUE);
 point = resiz_line(dlt_line->line_length, curr_line, position);
 curr_line->line_length += dlt_line->line_length - 1;
 ud1 = point;
 ud2 = d_line;
 tposit = 1;
 while (tposit < dlt_line->line_length)
 {
  tposit++;
  *ud1 = *ud2;
  ud1++;
  ud2++;
 }
 *ud1 = '\0';
 draw_line(scr_vert, scr_horz,point,position,curr_line->line_length);
}
