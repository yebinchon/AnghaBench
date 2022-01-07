
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int max_length; int line_length; } ;


 TYPE_1__* curr_line ;
 unsigned char* d_word ;
 int d_wrd_len ;
 int draw_line (int ,int ,unsigned char*,int,int) ;
 int free (unsigned char*) ;
 unsigned char* malloc (int) ;
 unsigned char* point ;
 int position ;
 unsigned char* resiz_line (int,TYPE_1__*,int) ;
 int scr_horz ;
 int scr_vert ;

void
undel_word()
{
 int temp;
 int tposit;
 unsigned char *tmp_old_ptr;
 unsigned char *tmp_space;
 unsigned char *tmp_ptr;
 unsigned char *d_word_ptr;




 if ((curr_line->max_length - (curr_line->line_length + d_wrd_len)) < 5)
  point = resiz_line(d_wrd_len, curr_line, position);
 tmp_ptr = tmp_space = malloc(curr_line->line_length + d_wrd_len);
 d_word_ptr = d_word;
 temp = 1;



 while (temp <= d_wrd_len)
 {
  temp++;
  *tmp_ptr = *d_word_ptr;
  tmp_ptr++;
  d_word_ptr++;
 }
 tmp_old_ptr = point;
 tposit = position;




 while (tposit < curr_line->line_length)
 {
  temp++;
  tposit++;
  *tmp_ptr = *tmp_old_ptr;
  tmp_ptr++;
  tmp_old_ptr++;
 }
 curr_line->line_length += d_wrd_len;
 tmp_old_ptr = point;
 *tmp_ptr = '\0';
 tmp_ptr = tmp_space;
 tposit = 1;



 while (tposit < temp)
 {
  tposit++;
  *tmp_old_ptr = *tmp_ptr;
  tmp_ptr++;
  tmp_old_ptr++;
 }
 *tmp_old_ptr = '\0';
 free(tmp_space);
 draw_line(scr_vert, scr_horz, point, position, curr_line->line_length);
}
