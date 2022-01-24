#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 int CHARSET_MAX ; 
 char* FUNC0 (char const**) ; 
 int isXml ; 
 scalar_t__ FUNC1 (char const*,char const*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 

void
FUNC3(const char *buf, char *charset)
{
  const char *next, *p;

  charset[0] = '\0';
  next = buf;
  p = FUNC0(&next);
  if (FUNC1(p, next, "text"))
    FUNC2(charset, "us-ascii");
  else if (!FUNC1(p, next, "application"))
    return;
  p = FUNC0(&next);
  if (!p || *p != '/')
    return;
  p = FUNC0(&next);
  if (FUNC1(p, next, "xml"))
    isXml = 1;
  p = FUNC0(&next);
  while (p) {
    if (*p == ';') {
      p = FUNC0(&next);
      if (FUNC1(p, next, "charset")) {
        p = FUNC0(&next);
        if (p && *p == '=') {
          p = FUNC0(&next);
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
      }
    }
  else
    p = FUNC0(&next);
  }
}