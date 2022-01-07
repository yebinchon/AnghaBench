
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct search_path {char const* dirname; struct search_path* next; } ;
struct TYPE_2__ {char* dir; } ;
typedef int FILE ;


 int assert (int **) ;
 TYPE_1__* current_srcfile ;
 struct search_path* search_path_head ;
 char* try_open (char const*,char const*,int **) ;

__attribute__((used)) static char *fopen_any_on_path(const char *fname, FILE **fp)
{
 const char *cur_dir = ((void*)0);
 struct search_path *node;
 char *fullname;


 assert(fp);
 if (current_srcfile)
  cur_dir = current_srcfile->dir;
 fullname = try_open(cur_dir, fname, fp);


 for (node = search_path_head; !*fp && node; node = node->next)
  fullname = try_open(node->dirname, fname, fp);

 return fullname;
}
