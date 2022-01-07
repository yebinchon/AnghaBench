
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_line6_pod {int dumpreq; } ;
typedef int ssize_t ;


 int POD_NAME_LENGTH ;
 int line6_wait_dump (int *,int ) ;

__attribute__((used)) static ssize_t get_name_generic(struct usb_line6_pod *pod, const char *str, char *buf)
{
 int length = 0;
 const char *p1;
 char *p2;
 char *last_non_space = buf;

 int retval = line6_wait_dump(&pod->dumpreq, 0);
 if (retval < 0)
  return retval;

 for (p1 = str, p2 = buf; *p1; ++p1, ++p2) {
  *p2 = *p1;
  if (*p2 != ' ')
   last_non_space = p2;
  if (++length == POD_NAME_LENGTH)
   break;
 }

 *(last_non_space + 1) = '\n';
 return last_non_space - buf + 2;
}
