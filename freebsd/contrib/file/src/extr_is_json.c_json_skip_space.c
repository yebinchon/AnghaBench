
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ json_isspace (unsigned char const) ;

__attribute__((used)) static const unsigned char *
json_skip_space(const unsigned char *uc, const unsigned char *ue)
{
 while (uc < ue && json_isspace(*uc))
  uc++;
 return uc;
}
