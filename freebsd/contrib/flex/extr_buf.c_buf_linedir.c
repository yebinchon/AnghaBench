
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Buf {int dummy; } ;


 int NUMCHARLINES ;
 int _ (char*) ;
 struct Buf* buf_strappend (struct Buf*,char*) ;
 char* flex_alloc (int) ;
 int flex_free (char*) ;
 int flexfatal (int ) ;
 int sprintf (char*,char*,int) ;
 int strlen (char const*) ;

struct Buf *buf_linedir (struct Buf *buf, const char* filename, int lineno)
{
    char *dst, *t;
    const char *src;

    t = flex_alloc (strlen ("#line \"\"\n") +
                    2 * strlen (filename) +
                    NUMCHARLINES +
                    1);
    if (!t)
      flexfatal (_("Allocation of buffer for line directive failed"));
    for (dst = t + sprintf (t, "#line %d \"", lineno), src = filename; *src; *dst++ = *src++)
      if (*src == '\\')
        *dst++ = '\\';
    *dst++ = '"';
    *dst++ = '\n';
    *dst = '\0';
    buf = buf_strappend (buf, t);
    flex_free (t);
    return buf;
}
