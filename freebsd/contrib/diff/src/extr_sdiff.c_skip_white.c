
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _ (char*) ;
 int checksigs () ;
 scalar_t__ ferror (int ) ;
 int getchar () ;
 int isspace (int) ;
 int perror_fatal (int ) ;
 int stdin ;

__attribute__((used)) static int
skip_white (void)
{
  int c;
  for (;;)
    {
      c = getchar ();
      if (! isspace (c) || c == '\n')
 break;
      checksigs ();
    }
  if (ferror (stdin))
    perror_fatal (_("read failed"));
  return c;
}
