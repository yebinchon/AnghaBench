
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MANGLE_TRACE (char*,char*) ;
 int write_char (char) ;
 int write_number (int const,int,int) ;

__attribute__((used)) static void
write_substitution (const int seq_id)
{
  MANGLE_TRACE ("substitution", "");

  write_char ('S');
  if (seq_id > 0)
    write_number (seq_id - 1, 1, 36);
  write_char ('_');
}
