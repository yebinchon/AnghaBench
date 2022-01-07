
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint_t ;
typedef int buf ;


 int CTF_INT_BOOL ;
 int CTF_INT_CHAR ;
 int CTF_INT_SIGNED ;
 int CTF_INT_VARARGS ;
 int snprintf (char*,int,char*,int) ;
 int strcat (char*,char*) ;

__attribute__((used)) static const char *
int_encoding_to_str(uint_t encoding)
{
 static char buf[32];

 if (encoding == 0 || (encoding & ~(CTF_INT_SIGNED | CTF_INT_CHAR |
     CTF_INT_BOOL | CTF_INT_VARARGS)) != 0)
  (void) snprintf(buf, sizeof (buf), " 0x%x", encoding);
 else {
  buf[0] = '\0';
  if (encoding & CTF_INT_SIGNED)
   (void) strcat(buf, " SIGNED");
  if (encoding & CTF_INT_CHAR)
   (void) strcat(buf, " CHAR");
  if (encoding & CTF_INT_BOOL)
   (void) strcat(buf, " BOOL");
  if (encoding & CTF_INT_VARARGS)
   (void) strcat(buf, " VARARGS");
 }

 return (buf + 1);
}
