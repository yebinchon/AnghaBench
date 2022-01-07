
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nid_path {int depth; int* path; } ;
typedef int buf ;


 int snd_printdd (char*,char const*,int,char*) ;
 int sprintf (char*,char*,int) ;
 int strlcat (char*,char*,int) ;

__attribute__((used)) static void print_nid_path(const char *pfx, struct nid_path *path)
{
 char buf[40];
 int i;


 buf[0] = 0;
 for (i = 0; i < path->depth; i++) {
  char tmp[4];
  sprintf(tmp, ":%02x", path->path[i]);
  strlcat(buf, tmp, sizeof(buf));
 }
 snd_printdd("%s path: depth=%d %s\n", pfx, path->depth, buf);
}
