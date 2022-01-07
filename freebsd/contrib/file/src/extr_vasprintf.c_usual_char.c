
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {size_t src_string; size_t dest_string; size_t real_len; size_t pseudo_len; } ;
typedef TYPE_1__ xprintf_struct ;


 scalar_t__ EOF ;
 int memcpy (size_t,size_t,size_t) ;
 scalar_t__ realloc_buff (TYPE_1__*,size_t) ;
 size_t strcspn (size_t,char*) ;

__attribute__((used)) static int usual_char(xprintf_struct * s)
{
  size_t len;

  len = strcspn(s->src_string, "%");



  if (realloc_buff(s,len) == EOF)
    return EOF;

  memcpy(s->dest_string, s->src_string, len);
  s->src_string += len;
  s->dest_string += len;
  s->real_len += len;
  s->pseudo_len += len;

  return 0;
}
