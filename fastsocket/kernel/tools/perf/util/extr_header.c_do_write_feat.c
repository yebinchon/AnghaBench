
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct perf_header {int dummy; } ;
struct perf_file_section {void* offset; void* size; } ;
struct perf_evlist {int dummy; } ;
struct TYPE_2__ {int (* write ) (int,struct perf_header*,struct perf_evlist*) ;} ;


 int SEEK_CUR ;
 int SEEK_SET ;
 TYPE_1__* feat_ops ;
 void* lseek (int,void*,int ) ;
 scalar_t__ perf_header__has_feat (struct perf_header*,int) ;
 int pr_debug (char*,int) ;
 int stub1 (int,struct perf_header*,struct perf_evlist*) ;

__attribute__((used)) static int do_write_feat(int fd, struct perf_header *h, int type,
    struct perf_file_section **p,
    struct perf_evlist *evlist)
{
 int err;
 int ret = 0;

 if (perf_header__has_feat(h, type)) {
  if (!feat_ops[type].write)
   return -1;

  (*p)->offset = lseek(fd, 0, SEEK_CUR);

  err = feat_ops[type].write(fd, h, evlist);
  if (err < 0) {
   pr_debug("failed to write feature %d\n", type);


   lseek(fd, (*p)->offset, SEEK_SET);

   return -1;
  }
  (*p)->size = lseek(fd, 0, SEEK_CUR) - (*p)->offset;
  (*p)++;
 }
 return ret;
}
