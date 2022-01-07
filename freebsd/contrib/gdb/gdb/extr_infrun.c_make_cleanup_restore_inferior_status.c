
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inferior_status {int dummy; } ;
struct cleanup {int dummy; } ;


 int do_restore_inferior_status_cleanup ;
 struct cleanup* make_cleanup (int ,struct inferior_status*) ;

struct cleanup *
make_cleanup_restore_inferior_status (struct inferior_status *inf_status)
{
  return make_cleanup (do_restore_inferior_status_cleanup, inf_status);
}
