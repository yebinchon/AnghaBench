
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tomoyo_page_buffer {int dummy; } ;
struct path {int dummy; } ;


 int BUILD_BUG_ON (int) ;
 int TOMOYO_MAX_PATHNAME_LEN ;
 char* tomoyo_alloc (int) ;
 int tomoyo_free (char*) ;
 scalar_t__ tomoyo_realpath_from_path2 (struct path*,char*,int) ;

char *tomoyo_realpath_from_path(struct path *path)
{
 char *buf = tomoyo_alloc(sizeof(struct tomoyo_page_buffer));

 BUILD_BUG_ON(sizeof(struct tomoyo_page_buffer)
       <= TOMOYO_MAX_PATHNAME_LEN - 1);
 if (!buf)
  return ((void*)0);
 if (tomoyo_realpath_from_path2(path, buf,
           TOMOYO_MAX_PATHNAME_LEN - 1) == 0)
  return buf;
 tomoyo_free(buf);
 return ((void*)0);
}
