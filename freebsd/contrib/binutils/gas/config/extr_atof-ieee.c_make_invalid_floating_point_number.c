
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LITTLENUM_TYPE ;


 int _ (char*) ;
 int as_bad (int ) ;

__attribute__((used)) static void
make_invalid_floating_point_number (LITTLENUM_TYPE *words)
{
  as_bad (_("cannot create floating-point number"));

  words[0] = (LITTLENUM_TYPE) ((unsigned) -1) >> 1;
  words[1] = (LITTLENUM_TYPE) -1;
  words[2] = (LITTLENUM_TYPE) -1;
  words[3] = (LITTLENUM_TYPE) -1;
  words[4] = (LITTLENUM_TYPE) -1;
  words[5] = (LITTLENUM_TYPE) -1;
}
