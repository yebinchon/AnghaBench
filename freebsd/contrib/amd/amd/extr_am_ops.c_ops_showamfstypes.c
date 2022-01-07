
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct am_ops {char* fs_type; } ;


 scalar_t__ strlen (char*) ;
 struct am_ops** vops ;
 int xstrlcat (char*,char*,size_t) ;

void
ops_showamfstypes(char *buf, size_t l)
{
  struct am_ops **ap;
  int linesize = 0;

  buf[0] = '\0';
  for (ap = vops; *ap; ap++) {
    xstrlcat(buf, (*ap)->fs_type, l);
    if (ap[1])
      xstrlcat(buf, ", ", l);
    linesize += strlen((*ap)->fs_type) + 2;
    if (linesize > 62) {
      linesize = 0;
      xstrlcat(buf, "\n      ", l);
    }
  }
}
