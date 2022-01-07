
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int optab ;


 int MAX_MODE_DECIMAL_FLOAT ;
 int MAX_MODE_FLOAT ;
 int MIN_MODE_DECIMAL_FLOAT ;
 int MIN_MODE_FLOAT ;
 int init_libfuncs (int ,int ,int ,char const*,int) ;

__attribute__((used)) static void
init_floating_libfuncs (optab optable, const char *opname, int suffix)
{
  init_libfuncs (optable, MIN_MODE_FLOAT, MAX_MODE_FLOAT, opname, suffix);
  init_libfuncs (optable, MIN_MODE_DECIMAL_FLOAT, MAX_MODE_DECIMAL_FLOAT,
   opname, suffix);
}
