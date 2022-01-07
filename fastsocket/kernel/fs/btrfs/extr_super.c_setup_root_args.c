
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GFP_NOFS ;
 char* kmalloc (unsigned int,int ) ;
 char* strchr (char*,char) ;
 int strcpy (char*,char*) ;
 int strlen (char*) ;
 char* strstr (char*,char*) ;

__attribute__((used)) static char *setup_root_args(char *args)
{
 unsigned len = strlen(args) + 2 + 1;
 char *src, *dst, *buf;
 src = strstr(args, "subvol=");

 if (!src)
  return ((void*)0);

 buf = dst = kmalloc(len, GFP_NOFS);
 if (!buf)
  return ((void*)0);





 if (src != args) {
  *src++ = '\0';
  strcpy(buf, args);
  dst += strlen(args);
 }

 strcpy(dst, "subvolid=0");
 dst += strlen("subvolid=0");





 src = strchr(src, ',');
 if (src)
  strcpy(dst, src);

 return buf;
}
