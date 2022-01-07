
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int OPT_EQUAL (char const*,char const*) ;
 int OPT_INTVAL (char const*,char const*) ;

__attribute__((used)) static __inline__ int get_opt_int(const char *this_opt, const char *name,
      int *ret)
{
 if (!ret)
  return 0;

 if (!OPT_EQUAL(this_opt, name))
  return 0;

 *ret = OPT_INTVAL(this_opt, name);
 return 1;
}
