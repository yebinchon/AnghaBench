
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scm_fp_list {size_t count; int max; struct file** fp; } ;
struct file {int dummy; } ;
struct cmsghdr {int cmsg_len; } ;


 int CMSG_ALIGN (int) ;
 scalar_t__ CMSG_DATA (struct cmsghdr*) ;
 int EBADF ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int SCM_MAX_FD ;
 struct file* fget (int) ;
 struct scm_fp_list* kmalloc (int,int ) ;

__attribute__((used)) static int scm_fp_copy(struct cmsghdr *cmsg, struct scm_fp_list **fplp)
{
 int *fdp = (int*)CMSG_DATA(cmsg);
 struct scm_fp_list *fpl = *fplp;
 struct file **fpp;
 int i, num;

 num = (cmsg->cmsg_len - CMSG_ALIGN(sizeof(struct cmsghdr)))/sizeof(int);

 if (num <= 0)
  return 0;

 if (num > SCM_MAX_FD)
  return -EINVAL;

 if (!fpl)
 {
  fpl = kmalloc(sizeof(struct scm_fp_list), GFP_KERNEL);
  if (!fpl)
   return -ENOMEM;
  *fplp = fpl;
  fpl->count = 0;
  fpl->max = SCM_MAX_FD;
 }
 fpp = &fpl->fp[fpl->count];

 if (fpl->count + num > fpl->max)
  return -EINVAL;





 for (i=0; i< num; i++)
 {
  int fd = fdp[i];
  struct file *file;

  if (fd < 0 || !(file = fget(fd)))
   return -EBADF;
  *fpp++ = file;
  fpl->count++;
 }
 return num;
}
