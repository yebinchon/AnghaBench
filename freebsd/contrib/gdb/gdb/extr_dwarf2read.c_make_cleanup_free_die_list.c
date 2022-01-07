
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct die_info {int dummy; } ;
struct cleanup {int dummy; } ;


 int do_free_die_list_cleanup ;
 struct cleanup* make_cleanup (int ,struct die_info*) ;

__attribute__((used)) static struct cleanup *
make_cleanup_free_die_list (struct die_info *dies)
{
  return make_cleanup (do_free_die_list_cleanup, dies);
}
