
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int prefixcmp (char const*,char*) ;
 char const* prepend (char*,char const*) ;

__attribute__((used)) static const char *cmd_to_page(const char *perf_cmd)
{
 if (!perf_cmd)
  return "perf";
 else if (!prefixcmp(perf_cmd, "perf"))
  return perf_cmd;
 else
  return prepend("perf-", perf_cmd);
}
