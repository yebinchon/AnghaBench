
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FORMAT_BSD ;
 int FORMAT_POSIX ;
 int FORMAT_SYSV ;
 int _ (char*) ;
 int fatal (int ,char*) ;
 int * format ;
 int * formats ;

__attribute__((used)) static void
set_output_format (char *f)
{
  int i;

  switch (*f)
    {
    case 'b':
    case 'B':
      i = FORMAT_BSD;
      break;
    case 'p':
    case 'P':
      i = FORMAT_POSIX;
      break;
    case 's':
    case 'S':
      i = FORMAT_SYSV;
      break;
    default:
      fatal (_("%s: invalid output format"), f);
    }
  format = &formats[i];
}
