
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int optab ;


 int BITS_PER_WORD ;
 int LONG_LONG_TYPE_SIZE ;
 int MODE_INT ;
 int init_libfuncs (int ,int ,int ,char const*,int) ;
 int mode_for_size (int,int ,int ) ;
 int word_mode ;

__attribute__((used)) static void
init_integral_libfuncs (optab optable, const char *opname, int suffix)
{
  int maxsize = 2*BITS_PER_WORD;
  if (maxsize < LONG_LONG_TYPE_SIZE)
    maxsize = LONG_LONG_TYPE_SIZE;
  init_libfuncs (optable, word_mode,
   mode_for_size (maxsize, MODE_INT, 0),
   opname, suffix);
}
