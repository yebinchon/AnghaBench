
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int iter_handlers (int ,int*) ;
 int print_data_handler ;
 int print_delay_handler ;
 int print_device_handler ;
 int print_panic_handler ;
 int printf (char*) ;

__attribute__((used)) static int
print_all_handlers(void)
{
 int count = 0, total = 0;

 (void) iter_handlers(print_device_handler, &count);
 if (count > 0) {
  total += count;
  (void) printf("\n");
  count = 0;
 }

 (void) iter_handlers(print_delay_handler, &count);
 if (count > 0) {
  total += count;
  (void) printf("\n");
  count = 0;
 }

 (void) iter_handlers(print_data_handler, &count);
 if (count > 0) {
  total += count;
  (void) printf("\n");
  count = 0;
 }

 (void) iter_handlers(print_panic_handler, &count);

 return (count + total);
}
