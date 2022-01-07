
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int unwind_entry_cb_t ;
typedef int unw_word_t ;
typedef int unw_cursor_t ;
typedef int unw_addr_space_t ;
struct unwind_info {int machine; int thread; } ;


 int ENOMEM ;
 int UNW_REG_IP ;
 int accessors ;
 int display_error (int) ;
 int entry (int ,int ,int ,int ,void*) ;
 int pr_err (char*) ;
 int unw_create_addr_space (int *,int ) ;
 int unw_destroy_addr_space (int ) ;
 int unw_get_reg (int *,int ,int *) ;
 int unw_init_remote (int *,int ,struct unwind_info*) ;
 scalar_t__ unw_step (int *) ;

__attribute__((used)) static int get_entries(struct unwind_info *ui, unwind_entry_cb_t cb,
         void *arg)
{
 unw_addr_space_t addr_space;
 unw_cursor_t c;
 int ret;

 addr_space = unw_create_addr_space(&accessors, 0);
 if (!addr_space) {
  pr_err("unwind: Can't create unwind address space.\n");
  return -ENOMEM;
 }

 ret = unw_init_remote(&c, addr_space, ui);
 if (ret)
  display_error(ret);

 while (!ret && (unw_step(&c) > 0)) {
  unw_word_t ip;

  unw_get_reg(&c, UNW_REG_IP, &ip);
  ret = entry(ip, ui->thread, ui->machine, cb, arg);
 }

 unw_destroy_addr_space(addr_space);
 return ret;
}
