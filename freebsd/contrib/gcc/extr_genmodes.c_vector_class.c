
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum mode_class { ____Placeholder_mode_class } mode_class ;




 int MODE_RANDOM ;
 int MODE_VECTOR_FLOAT ;
 int MODE_VECTOR_INT ;
 int error (char*,int ) ;
 int * mode_class_names ;

__attribute__((used)) static enum mode_class
vector_class (enum mode_class cl)
{
  switch (cl)
    {
    case 128: return MODE_VECTOR_INT;
    case 129: return MODE_VECTOR_FLOAT;
    default:
      error ("no vector class for class %s", mode_class_names[cl]);
      return MODE_RANDOM;
    }
}
