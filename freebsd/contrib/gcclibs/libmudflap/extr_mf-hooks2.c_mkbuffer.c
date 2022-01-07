
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mf_filebuffer {char* buffer; struct mf_filebuffer* next; int * file; } ;
typedef int FILE ;


 size_t BUFSIZ ;
 int _IOFBF ;
 int _IOLBF ;
 int _IONBF ;
 int assert (int) ;
 int fileno (int *) ;
 scalar_t__ isatty (int) ;
 void* malloc (int) ;
 struct mf_filebuffer* mf_filebuffers ;
 int setvbuf (int *,char*,int,size_t) ;

__attribute__((used)) static void
mkbuffer (FILE *f)
{



  int rc;
  size_t bufsize = BUFSIZ;
  int bufmode;
  char *buffer = malloc (bufsize);
  struct mf_filebuffer *b = malloc (sizeof (struct mf_filebuffer));
  assert ((buffer != ((void*)0)) && (b != ((void*)0)));


  b->file = f;
  b->buffer = buffer;
  b->next = mf_filebuffers;
  mf_filebuffers = b;


  bufmode = fileno (f) == 2 ? _IONBF : (isatty (fileno (f)) ? _IOLBF : _IOFBF);

  rc = setvbuf (f, buffer, bufmode, bufsize);
  assert (rc == 0);
}
