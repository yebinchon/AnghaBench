
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct demangle_component {int dummy; } ;
struct d_info {char const* send; int options; int expansion; } ;


 int ANONYMOUS_NAMESPACE_PREFIX ;
 int ANONYMOUS_NAMESPACE_PREFIX_LEN ;
 int DMGL_JAVA ;
 int d_advance (struct d_info*,int) ;
 struct demangle_component* d_make_name (struct d_info*,char const*,int) ;
 char d_peek_char (struct d_info*) ;
 char* d_str (struct d_info*) ;
 scalar_t__ memcmp (char const*,int ,int) ;

__attribute__((used)) static struct demangle_component *
d_identifier (struct d_info *di, int len)
{
  const char *name;

  name = d_str (di);

  if (di->send - name < len)
    return ((void*)0);

  d_advance (di, len);




  if ((di->options & DMGL_JAVA) != 0
      && d_peek_char (di) == '$')
    d_advance (di, 1);




  if (len >= (int) ANONYMOUS_NAMESPACE_PREFIX_LEN + 2
      && memcmp (name, ANONYMOUS_NAMESPACE_PREFIX,
   ANONYMOUS_NAMESPACE_PREFIX_LEN) == 0)
    {
      const char *s;

      s = name + ANONYMOUS_NAMESPACE_PREFIX_LEN;
      if ((*s == '.' || *s == '_' || *s == '$')
   && s[1] == 'N')
 {
   di->expansion -= len - sizeof "(anonymous namespace)";
   return d_make_name (di, "(anonymous namespace)",
         sizeof "(anonymous namespace)" - 1);
 }
    }

  return d_make_name (di, name, len);
}
