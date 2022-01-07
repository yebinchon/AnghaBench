
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int demangle_callbackref ;


 int d_demangle_callback (char const*,int,int ,void*) ;

int
cplus_demangle_v3_callback (const char *mangled, int options,
                            demangle_callbackref callback, void *opaque)
{
  return d_demangle_callback (mangled, options, callback, opaque);
}
