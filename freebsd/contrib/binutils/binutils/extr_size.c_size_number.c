
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ bfd_size_type ;


 scalar_t__ decimal ;
 scalar_t__ octal ;
 scalar_t__ radix ;
 int sprintf (char*,char*,unsigned long) ;
 int strlen (char*) ;

__attribute__((used)) static int
size_number (bfd_size_type num)
{
  char buffer[40];

  sprintf (buffer,
    (radix == decimal ? "%lu" :
    ((radix == octal) ? "0%lo" : "0x%lx")),
    (unsigned long) num);

  return strlen (buffer);
}
