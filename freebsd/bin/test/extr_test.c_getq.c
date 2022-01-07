
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int intmax_t ;


 scalar_t__ EINVAL ;
 scalar_t__ errno ;
 int error (char*,char const*) ;
 scalar_t__ isspace (unsigned char) ;
 int strtoimax (char const*,char**,int) ;

__attribute__((used)) static intmax_t
getq(const char *s)
{
 char *p;
 intmax_t r;

 errno = 0;
 r = strtoimax(s, &p, 10);

 if (s == p)
  error("%s: bad number", s);

 if (errno != 0)
  error((errno == EINVAL) ? "%s: bad number" :
       "%s: out of range", s);

 while (isspace((unsigned char)*p))
  p++;

 if (*p)
  error("%s: bad number", s);

 return r;
}
