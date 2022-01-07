
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int comedi_free_board_minor (unsigned int) ;
 unsigned int comedi_num_legacy_minors ;

__attribute__((used)) static void comedi_cleanup_legacy_minors(void)
{
 unsigned i;

 for (i = 0; i < comedi_num_legacy_minors; i++)
  comedi_free_board_minor(i);
}
