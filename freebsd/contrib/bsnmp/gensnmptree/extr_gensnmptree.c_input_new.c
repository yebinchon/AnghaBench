
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input {int lno; void* path; void* fname; int * fp; } ;
typedef int FILE ;


 int LIST_INSERT_HEAD (int *,struct input*,int ) ;
 struct input* input ;
 int inputs ;
 int link ;
 void* savestr (char const*) ;
 struct input* xalloc (int) ;

__attribute__((used)) static void
input_new(FILE *fp, const char *path, const char *fname)
{
 struct input *ip;

 ip = xalloc(sizeof(*ip));
 ip->fp = fp;
 ip->lno = 1;
 ip->fname = savestr(fname);
 ip->path = savestr(path);
 LIST_INSERT_HEAD(&inputs, ip, link);

 input = ip;
}
