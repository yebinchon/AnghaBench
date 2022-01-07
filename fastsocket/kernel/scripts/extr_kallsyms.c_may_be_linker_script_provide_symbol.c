
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sym_entry {int len; scalar_t__ sym; } ;


 int memcmp (char const*,char*,int) ;

__attribute__((used)) static int may_be_linker_script_provide_symbol(const struct sym_entry *se)
{
 const char *symbol = (char *)se->sym + 1;
 int len = se->len - 1;

 if (len < 8)
  return 0;

 if (symbol[0] != '_' || symbol[1] != '_')
  return 0;


 if (!memcmp(symbol + 2, "start_", 6))
  return 1;


 if (!memcmp(symbol + 2, "stop_", 5))
  return 1;


 if (!memcmp(symbol + 2, "end_", 4))
  return 1;


 if (!memcmp(symbol + len - 6, "_start", 6))
  return 1;


 if (!memcmp(symbol + len - 4, "_end", 4))
  return 1;

 return 0;
}
