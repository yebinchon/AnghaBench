
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef char uchar ;
struct TYPE_5__ {TYPE_1__* buffer; } ;
typedef TYPE_2__ cpp_reader ;
struct TYPE_4__ {char* cur; } ;



__attribute__((used)) static void
skip_macro_block_comment (cpp_reader *pfile)
{
  const uchar *cur = pfile->buffer->cur;

  cur++;
  if (*cur == '/')
    cur++;



  while(! (*cur++ == '/' && cur[-2] == '*') )
    ;

  pfile->buffer->cur = cur;
}
