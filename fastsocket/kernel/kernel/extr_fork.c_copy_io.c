
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct task_struct {TYPE_1__* io_context; } ;
struct io_context {int ioprio; } ;
struct TYPE_5__ {struct io_context* io_context; } ;
struct TYPE_4__ {int ioprio; } ;


 unsigned long CLONE_IO ;
 int ENOMEM ;
 int GFP_KERNEL ;
 TYPE_1__* alloc_io_context (int ,int) ;
 TYPE_2__* current ;
 TYPE_1__* ioc_task_link (struct io_context*) ;
 scalar_t__ ioprio_valid (int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int copy_io(unsigned long clone_flags, struct task_struct *tsk)
{
 return 0;
}
