
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct blockvector {int dummy; } ;


 int BLOCKVECTOR_BLOCK (struct blockvector*,int) ;
 int BLOCKVECTOR_NBLOCKS (struct blockvector*) ;
 int debug_print_block (int ) ;
 int fprintf (int ,char*,int) ;
 int stderr ;

__attribute__((used)) static void
debug_print_blocks (struct blockvector *bv)
{
  int i;

  if (bv == ((void*)0))
    return;
  for (i = 0; i < BLOCKVECTOR_NBLOCKS (bv); i += 1)
    {
      fprintf (stderr, "%6d. ", i);
      debug_print_block (BLOCKVECTOR_BLOCK (bv, i));
    }
}
