
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct loadedfile {char* path; int used; scalar_t__ maplen; scalar_t__ len; int * buf; } ;


 int FALSE ;
 struct loadedfile* bmake_malloc (int) ;

__attribute__((used)) static struct loadedfile *
loadedfile_create(const char *path)
{
 struct loadedfile *lf;

 lf = bmake_malloc(sizeof(*lf));
 lf->path = (path == ((void*)0) ? "(stdin)" : path);
 lf->buf = ((void*)0);
 lf->len = 0;
 lf->maplen = 0;
 lf->used = FALSE;
 return lf;
}
