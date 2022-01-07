
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int basic_block ;
typedef int FILE ;


 int buffer ;
 int dump_generic_bb_buff (int *,int ,int,int) ;
 int maybe_init_pretty_print (int *) ;
 int pp_flush (int *) ;

void
dump_generic_bb (FILE *file, basic_block bb, int indent, int flags)
{
  maybe_init_pretty_print (file);
  dump_generic_bb_buff (&buffer, bb, indent, flags);
  pp_flush (&buffer);
}
