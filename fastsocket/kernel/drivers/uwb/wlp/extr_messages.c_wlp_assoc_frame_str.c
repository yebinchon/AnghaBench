
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int ARRAY_SIZE (char const**) ;
 char const** __wlp_assoc_frame ;

__attribute__((used)) static const char *wlp_assoc_frame_str(unsigned id)
{
 if (id >= ARRAY_SIZE(__wlp_assoc_frame))
  return "unknown association frame";
 return __wlp_assoc_frame[id];
}
