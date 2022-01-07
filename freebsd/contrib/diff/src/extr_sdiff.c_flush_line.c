
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EOF ;
 int _ (char*) ;
 scalar_t__ ferror (int ) ;
 int getchar () ;
 int perror_fatal (int ) ;
 int stdin ;

__attribute__((used)) static void
flush_line (void)
{
  int c;
  while ((c = getchar ()) != '\n' && c != EOF)
    continue;
  if (ferror (stdin))
    perror_fatal (_("read failed"));
}
