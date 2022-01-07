
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ IN_CTYPE_DOMAIN (unsigned char) ;
 scalar_t__ isspace (unsigned char) ;

__attribute__((used)) static inline bool
is_space (unsigned char c)
{
  return IN_CTYPE_DOMAIN (c) && isspace (c);
}
