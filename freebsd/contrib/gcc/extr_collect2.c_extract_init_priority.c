
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DEFAULT_INIT_PRIORITY ;
 int atoi (char const*) ;

__attribute__((used)) static int
extract_init_priority (const char *name)
{
  int pos = 0, pri;

  while (name[pos] == '_')
    ++pos;
  pos += 10;


  pri = atoi (name + pos);
  return pri ? pri : DEFAULT_INIT_PRIORITY;
}
