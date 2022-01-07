
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char at (int ,int ) ;
 int idx ;
 int pc ;
 int ptr ;

__attribute__((used)) static void
skip_past_newline ()
{
  while (at (ptr, idx)
  && at (ptr, idx) != '\n')
    idx++;
  idx++;
  pc++;
}
