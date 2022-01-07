
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct line6_dump_request {int wait; int in_progress; } ;


 int LINE6_DUMP_NONE ;
 int wake_up_interruptible (int *) ;

void line6_dump_finished(struct line6_dump_request *l6dr)
{
 l6dr->in_progress = LINE6_DUMP_NONE;
 wake_up_interruptible(&l6dr->wait);
}
