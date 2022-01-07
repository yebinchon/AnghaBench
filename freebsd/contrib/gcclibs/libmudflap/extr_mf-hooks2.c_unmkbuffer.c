
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mf_filebuffer {struct mf_filebuffer* next; struct mf_filebuffer* buffer; int * file; } ;
typedef int FILE ;


 int free (struct mf_filebuffer*) ;
 struct mf_filebuffer* mf_filebuffers ;

__attribute__((used)) static void
unmkbuffer (FILE *f)
{
  struct mf_filebuffer *b = mf_filebuffers;
  struct mf_filebuffer **pb = & mf_filebuffers;
  while (b != ((void*)0))
    {
      if (b->file == f)
        {
          *pb = b->next;
          free (b->buffer);
          free (b);
          return;
        }
      pb = & b->next;
      b = b->next;
    }
}
