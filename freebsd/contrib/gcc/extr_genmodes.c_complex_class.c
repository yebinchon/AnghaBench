
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum mode_class { ____Placeholder_mode_class } mode_class ;


 int MODE_COMPLEX_FLOAT ;
 int MODE_COMPLEX_INT ;


 int MODE_RANDOM ;
 int error (char*,int ) ;
 int * mode_class_names ;

__attribute__((used)) static enum mode_class
complex_class (enum mode_class c)
{
  switch (c)
    {
    case 128: return MODE_COMPLEX_INT;
    case 129: return MODE_COMPLEX_FLOAT;
    default:
      error ("no complex class for class %s", mode_class_names[c]);
      return MODE_RANDOM;
    }
}
