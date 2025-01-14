
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct file {int (* register_event ) (struct cgroup*,struct file*,struct file*,char const*) ;int (* unregister_event ) (struct cgroup*,struct file*,struct file*) ;TYPE_1__* f_op; } ;
struct cgroup_event {struct file* eventfd; int list; struct file* cft; int pt; int remove; int wait; struct cgroup* cgrp; } ;
struct cgroup {int event_list_lock; int event_list; } ;
struct cftype {int dummy; } ;
struct TYPE_2__ {int (* poll ) (struct file*,int *) ;} ;


 int EBADF ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int INIT_WORK (int *,int ) ;
 scalar_t__ IS_ERR (struct file*) ;
 int IS_ERR_OR_NULL (struct file*) ;
 int MAY_READ ;
 int POLLHUP ;
 int PTR_ERR (struct file*) ;
 struct file* __file_cft (struct file*) ;
 int cgroup_event_ptable_queue_proc ;
 int cgroup_event_remove ;
 int cgroup_event_wake ;
 struct file* eventfd_ctx_fileget (struct file*) ;
 int eventfd_ctx_put (struct file*) ;
 struct file* eventfd_fget (unsigned int) ;
 struct file* fget (unsigned int) ;
 int file_permission (struct file*,int ) ;
 int fput (struct file*) ;
 int init_poll_funcptr (int *,int ) ;
 int init_waitqueue_func_entry (int *,int ) ;
 int kfree (struct cgroup_event*) ;
 struct cgroup_event* kzalloc (int,int ) ;
 int list_add (int *,int *) ;
 unsigned int simple_strtoul (char const*,char**,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stub1 (struct cgroup*,struct file*,struct file*,char const*) ;
 int stub2 (struct file*,int *) ;
 int stub3 (struct cgroup*,struct file*,struct file*) ;

__attribute__((used)) static int cgroup_write_event_control(struct cgroup *cgrp, struct cftype *cft,
          const char *buffer)
{
 struct cgroup_event *event = ((void*)0);
 unsigned int efd, cfd;
 struct file *efile = ((void*)0);
 struct file *cfile = ((void*)0);
 char *endp;
 int ret;

 efd = simple_strtoul(buffer, &endp, 10);
 if (*endp != ' ')
  return -EINVAL;
 buffer = endp + 1;

 cfd = simple_strtoul(buffer, &endp, 10);
 if ((*endp != ' ') && (*endp != '\0'))
  return -EINVAL;
 buffer = endp + 1;

 event = kzalloc(sizeof(*event), GFP_KERNEL);
 if (!event)
  return -ENOMEM;
 event->cgrp = cgrp;
 INIT_LIST_HEAD(&event->list);
 init_poll_funcptr(&event->pt, cgroup_event_ptable_queue_proc);
 init_waitqueue_func_entry(&event->wait, cgroup_event_wake);
 INIT_WORK(&event->remove, cgroup_event_remove);

 efile = eventfd_fget(efd);
 if (IS_ERR(efile)) {
  ret = PTR_ERR(efile);
  goto fail;
 }

 event->eventfd = eventfd_ctx_fileget(efile);
 if (IS_ERR(event->eventfd)) {
  ret = PTR_ERR(event->eventfd);
  goto fail;
 }

 cfile = fget(cfd);
 if (!cfile) {
  ret = -EBADF;
  goto fail;
 }


 ret = file_permission(cfile, MAY_READ);
 if (ret < 0)
  goto fail;

 event->cft = __file_cft(cfile);
 if (IS_ERR(event->cft)) {
  ret = PTR_ERR(event->cft);
  goto fail;
 }

 if (!event->cft->register_event || !event->cft->unregister_event) {
  ret = -EINVAL;
  goto fail;
 }

 ret = event->cft->register_event(cgrp, event->cft,
   event->eventfd, buffer);
 if (ret)
  goto fail;

 if (efile->f_op->poll(efile, &event->pt) & POLLHUP) {
  event->cft->unregister_event(cgrp, event->cft, event->eventfd);
  ret = 0;
  goto fail;
 }

 spin_lock(&cgrp->event_list_lock);
 list_add(&event->list, &cgrp->event_list);
 spin_unlock(&cgrp->event_list_lock);

 fput(cfile);
 fput(efile);

 return 0;

fail:
 if (cfile)
  fput(cfile);

 if (event && event->eventfd && !IS_ERR(event->eventfd))
  eventfd_ctx_put(event->eventfd);

 if (!IS_ERR_OR_NULL(efile))
  fput(efile);

 kfree(event);

 return ret;
}
