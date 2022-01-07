
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct group {void* upto; void* from; int * file; } ;
typedef void* lin ;


 int * files ;
 int format_group (int ,char const*,int ,struct group*) ;
 int outfile ;

__attribute__((used)) static void
format_ifdef (char const *format, lin beg0, lin end0, lin beg1, lin end1)
{
  struct group groups[2];

  groups[0].file = &files[0];
  groups[0].from = beg0;
  groups[0].upto = end0;
  groups[1].file = &files[1];
  groups[1].from = beg1;
  groups[1].upto = end1;
  format_group (outfile, format, 0, groups);
}
