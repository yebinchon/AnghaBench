
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint_t ;
typedef int encs ;
typedef int buf ;


 int snprintf (char*,int,char*,int) ;

__attribute__((used)) static const char *
fp_encoding_to_str(uint_t encoding)
{
 static const char *const encs[] = {
  ((void*)0), "SINGLE", "DOUBLE", "COMPLEX", "DCOMPLEX", "LDCOMPLEX",
  "LDOUBLE", "INTERVAL", "DINTERVAL", "LDINTERVAL", "IMAGINARY",
  "DIMAGINARY", "LDIMAGINARY"
 };

 static char buf[16];

 if (encoding < 1 || encoding >= (sizeof (encs) / sizeof (char *))) {
  (void) snprintf(buf, sizeof (buf), "%u", encoding);
  return (buf);
 }

 return (encs[encoding]);
}
