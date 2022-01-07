
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct debug_handle {int dummy; } ;


 int memset (struct debug_handle*,int ,int) ;
 scalar_t__ xmalloc (int) ;

void *
debug_init (void)
{
  struct debug_handle *ret;

  ret = (struct debug_handle *) xmalloc (sizeof *ret);
  memset (ret, 0, sizeof *ret);
  return (void *) ret;
}
