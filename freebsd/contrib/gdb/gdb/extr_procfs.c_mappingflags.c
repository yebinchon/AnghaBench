
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 long MA_BREAK ;
 long MA_EXEC ;
 long MA_PHYS ;
 long MA_READ ;
 long MA_SHARED ;
 long MA_STACK ;
 long MA_WRITE ;
 int strcpy (char*,char*) ;

__attribute__((used)) static char *
mappingflags (long flags)
{
  static char asciiflags[8];

  strcpy (asciiflags, "-------");




  if (flags & MA_STACK)
    asciiflags[1] = 's';
  if (flags & MA_BREAK)
    asciiflags[2] = 'b';
  if (flags & MA_SHARED)
    asciiflags[3] = 's';
  if (flags & MA_READ)
    asciiflags[4] = 'r';
  if (flags & MA_WRITE)
    asciiflags[5] = 'w';
  if (flags & MA_EXEC)
    asciiflags[6] = 'x';
  return (asciiflags);
}
