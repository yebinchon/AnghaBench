
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strlcat (char*,char const*,size_t) ;

__attribute__((used)) static void
optadd(char *mntopts, size_t size, const char *opt)
{

 if (mntopts[0] != '\0')
  strlcat(mntopts, ",", size);
 strlcat(mntopts, opt, size);
}
