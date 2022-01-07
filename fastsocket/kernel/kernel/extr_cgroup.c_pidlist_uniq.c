
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ pid_t ;


 scalar_t__ PIDLIST_REALLOC_DIFFERENCE (int,int) ;
 scalar_t__* pidlist_resize (scalar_t__*,int) ;

__attribute__((used)) static int pidlist_uniq(pid_t **p, int length)
{
 int src, dest = 1;
 pid_t *list = *p;
 pid_t *newlist;





 if (length == 0 || length == 1)
  return length;

 for (src = 1; src < length; src++) {

  while (list[src] == list[src-1]) {
   src++;
   if (src == length)
    goto after;
  }

  list[dest] = list[src];
  dest++;
 }
after:





 if (PIDLIST_REALLOC_DIFFERENCE(length, dest)) {
  newlist = pidlist_resize(list, dest);
  if (newlist)
   *p = newlist;
 }
 return dest;
}
