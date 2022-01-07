
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {size_t maxlen; char* src_string; char* buffer_base; size_t real_len; int pseudo_len; char* dest_string; scalar_t__ buffer_len; } ;
typedef TYPE_1__ xprintf_struct ;


 int EOF ;
 int dispatch (TYPE_1__*) ;
 int free (char*) ;
 scalar_t__ realloc (void*,size_t) ;
 int realloc_buff (TYPE_1__*,size_t) ;

__attribute__((used)) static int core(xprintf_struct *s)
{
  size_t save_len;
  char *dummy_base;


  if ((int)(s->maxlen) <= 0)
    return EOF;
  s->maxlen--;


  if (s->src_string == ((void*)0))
    s->src_string = "(null)";


  s->buffer_base = ((void*)0);
  s->buffer_len = 0;
  s->real_len = 0;
  s->pseudo_len = 0;
  if (realloc_buff(s, (size_t)0) == EOF)
    return EOF;
  s->dest_string = s->buffer_base;


  for (;;) {

    if (*(s->src_string) == 0) {
      *(s->dest_string) = '\0';
      break;
    }

    if (dispatch(s) == EOF)
      goto free_EOF;


    if (s->real_len >= s->maxlen) {
      (s->buffer_base)[s->maxlen] = '\0';
      break;
    }
  }


  dummy_base = s->buffer_base;

  dummy_base = s->buffer_base + s->real_len;
  save_len = s->real_len;




  while(*(s->src_string) != 0) {
    s->real_len = 0;
    s->dest_string = dummy_base;
    if (dispatch(s) == EOF)
      goto free_EOF;
  }

  s->buffer_base = (char *)realloc((void *)(s->buffer_base), save_len + 1);
  if (s->buffer_base == ((void*)0))
    return EOF;
  return s->pseudo_len;

 free_EOF:
  free(s->buffer_base);
  return EOF;
}
