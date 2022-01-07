
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum debug_visibility { ____Placeholder_debug_visibility } debug_visibility ;


 unsigned int CXXFLAGS_VISIBILITY_PRIVATE ;
 unsigned int CXXFLAGS_VISIBILITY_PROTECTED ;
 unsigned int CXXFLAGS_VISIBILITY_PUBLIC ;



 int abort () ;

__attribute__((used)) static unsigned int
ieee_vis_to_flags (enum debug_visibility visibility)
{
  switch (visibility)
    {
    default:
      abort ();
    case 128:
      return CXXFLAGS_VISIBILITY_PUBLIC;
    case 130:
      return CXXFLAGS_VISIBILITY_PRIVATE;
    case 129:
      return CXXFLAGS_VISIBILITY_PROTECTED;
    }

}
