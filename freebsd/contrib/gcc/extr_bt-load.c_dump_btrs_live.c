
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * btrs_live ;
 int dump_file ;
 int dump_hard_reg_set (int ) ;
 int fprintf (int ,char*,...) ;

__attribute__((used)) static void
dump_btrs_live (int bb)
{
  fprintf (dump_file, "BB%d live:", bb);
  dump_hard_reg_set (btrs_live[bb]);
  fprintf (dump_file, "\n");
}
