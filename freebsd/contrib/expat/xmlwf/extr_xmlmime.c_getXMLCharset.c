
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CHARSET_MAX ;
 char* getTok (char const**) ;
 scalar_t__ matchkey (char const*,char const*,char*) ;
 int strcpy (char*,char*) ;

void
getXMLCharset(const char *buf, char *charset)
{
  const char *next, *p;

  charset[0] = '\0';
  next = buf;
  p = getTok(&next);
  if (matchkey(p, next, "text"))
    strcpy(charset, "us-ascii");
  else if (!matchkey(p, next, "application"))
    return;
  p = getTok(&next);
  if (!p || *p != '/')
    return;
  p = getTok(&next);




  p = getTok(&next);
  while (p) {
    if (*p == ';') {
      p = getTok(&next);
      if (matchkey(p, next, "charset")) {
        p = getTok(&next);
        if (p && *p == '=') {
          p = getTok(&next);
          if (p) {
            char *s = charset;
            if (*p == '"') {
              while (++p != next - 1) {
                if (*p == '\\')
                  ++p;
                if (s == charset + CHARSET_MAX - 1) {
                  charset[0] = '\0';
                  break;
                }
                *s++ = *p;
              }
              *s++ = '\0';
            }
            else {
              if (next - p > CHARSET_MAX - 1)
                break;
              while (p != next)
                *s++ = *p++;
              *s = 0;
              break;
            }
          }
        }
        break;
      }
    }
  else
    p = getTok(&next);
  }
}
