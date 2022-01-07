
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sbitmap ;


 int dump_sbitmap_file (int ,int ) ;
 int stderr ;

void
debug_sbitmap (sbitmap bmap)
{
  dump_sbitmap_file (stderr, bmap);
}
