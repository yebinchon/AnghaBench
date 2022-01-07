
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Buf {int dummy; } ;


 int _ (char*) ;
 int buf_append (struct Buf*,char**,int) ;
 scalar_t__ flex_alloc (size_t) ;
 int flexfatal (int ) ;
 int snprintf (char*,size_t,char const*,char const*) ;
 int strlen (char const*) ;

struct Buf *buf_m4_undefine (struct Buf *buf, const char* def)
{
    const char * fmt = "m4_undefine( [[%s]])m4_dnl\n";
    char * str;
    size_t strsz;

    str = (char*)flex_alloc(strsz = strlen(fmt) + strlen(def) + 2);
    if (!str)
        flexfatal (_("Allocation of buffer for m4 undef failed"));

    snprintf(str, strsz, fmt, def);
    buf_append(buf, &str, 1);
    return buf;
}
