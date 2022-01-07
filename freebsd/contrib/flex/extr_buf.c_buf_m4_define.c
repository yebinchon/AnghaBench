
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Buf {int dummy; } ;


 int _ (char*) ;
 int buf_append (struct Buf*,char**,int) ;
 scalar_t__ flex_alloc (size_t) ;
 int flexfatal (int ) ;
 int snprintf (char*,size_t,char const*,char const*,char const*) ;
 int strlen (char const*) ;

struct Buf *buf_m4_define (struct Buf *buf, const char* def, const char* val)
{
    const char * fmt = "m4_define( [[%s]], [[%s]])m4_dnl\n";
    char * str;
    size_t strsz;

    val = val?val:"";
    str = (char*)flex_alloc(strsz = strlen(fmt) + strlen(def) + strlen(val) + 2);
    if (!str)
        flexfatal (_("Allocation of buffer for m4 def failed"));

    snprintf(str, strsz, fmt, def, val);
    buf_append(buf, &str, 1);
    return buf;
}
