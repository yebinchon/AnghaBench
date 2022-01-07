
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Buf {int dummy; } ;


 int _ (char*) ;
 struct Buf* buf_strappend (struct Buf*,char*) ;
 char* flex_alloc (size_t) ;
 int flex_free (char*) ;
 int flexfatal (int ) ;
 int snprintf (char*,size_t,char const*,char const*) ;
 int strlen (char const*) ;

struct Buf *buf_prints (struct Buf *buf, const char *fmt, const char *s)
{
 char *t;
        size_t tsz;

 t = flex_alloc (tsz = strlen (fmt) + strlen (s) + 1);
 if (!t)
     flexfatal (_("Allocation of buffer to print string failed"));
 snprintf (t, tsz, fmt, s);
 buf = buf_strappend (buf, t);
 flex_free (t);
 return buf;
}
