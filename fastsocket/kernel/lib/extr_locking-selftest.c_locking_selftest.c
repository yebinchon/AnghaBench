
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AA ;
 int ABBA ;
 int ABBCCA ;
 int ABBCCDDA ;
 int ABCABC ;
 int ABCDBCDA ;
 int ABCDBDDA ;
 int DO_TESTCASE_2x3 (char*,int ) ;
 int DO_TESTCASE_2x6 (char*,int ) ;
 int DO_TESTCASE_6 (char*,int ) ;
 int DO_TESTCASE_6R (char*,int ) ;
 int DO_TESTCASE_6_SUCCESS (char*,int ) ;
 int DO_TESTCASE_6x2 (char*,int ) ;
 int DO_TESTCASE_6x6 (char*,int ) ;
 int DO_TESTCASE_6x6RW (char*,int ) ;
 int FAILURE ;
 int LOCKTYPE_RWLOCK ;
 int LOCKTYPE_RWSEM ;
 int SUCCESS ;
 int bad_unlock_order ;
 int debug_locks ;
 int debug_locks_silent ;
 int debug_locks_verbose ;
 int dotest (int ,int ,int ) ;
 int double_unlock ;
 scalar_t__ expected_testcase_failures ;
 int init_held ;
 int init_shared_classes () ;
 int irq_inversion ;
 int irq_read_recursion ;
 int irqsafe1 ;
 int irqsafe2A ;
 int irqsafe2B ;
 int irqsafe3 ;
 int irqsafe4 ;
 int print_testname (char*) ;
 int printk (char*,...) ;
 int rlock_AA1 ;
 int rlock_AA1B ;
 int rlock_AA2 ;
 int rlock_AA3 ;
 int rsem_AA1 ;
 int rsem_AA1B ;
 int rsem_AA2 ;
 int rsem_AA3 ;
 scalar_t__ testcase_successes ;
 int testcase_total ;
 scalar_t__ unexpected_testcase_failures ;

void locking_selftest(void)
{



 if (!debug_locks) {
  printk("----------------------------------\n");
  printk("| Locking API testsuite disabled |\n");
  printk("----------------------------------\n");
  return;
 }




 printk("------------------------\n");
 printk("| Locking API testsuite:\n");
 printk("----------------------------------------------------------------------------\n");
 printk("                                 | spin |wlock |rlock |mutex | wsem | rsem |\n");
 printk("  --------------------------------------------------------------------------\n");

 init_shared_classes();
 debug_locks_silent = !debug_locks_verbose;

 DO_TESTCASE_6R("A-A deadlock", AA);
 DO_TESTCASE_6R("A-B-B-A deadlock", ABBA);
 DO_TESTCASE_6R("A-B-B-C-C-A deadlock", ABBCCA);
 DO_TESTCASE_6R("A-B-C-A-B-C deadlock", ABCABC);
 DO_TESTCASE_6R("A-B-B-C-C-D-D-A deadlock", ABBCCDDA);
 DO_TESTCASE_6R("A-B-C-D-B-D-D-A deadlock", ABCDBDDA);
 DO_TESTCASE_6R("A-B-C-D-B-C-D-A deadlock", ABCDBCDA);
 DO_TESTCASE_6("double unlock", double_unlock);
 DO_TESTCASE_6("initialize held", init_held);
 DO_TESTCASE_6_SUCCESS("bad unlock order", bad_unlock_order);

 printk("  --------------------------------------------------------------------------\n");
 print_testname("recursive read-lock");
 printk("             |");
 dotest(rlock_AA1, SUCCESS, LOCKTYPE_RWLOCK);
 printk("             |");
 dotest(rsem_AA1, FAILURE, LOCKTYPE_RWSEM);
 printk("\n");

 print_testname("recursive read-lock #2");
 printk("             |");
 dotest(rlock_AA1B, SUCCESS, LOCKTYPE_RWLOCK);
 printk("             |");
 dotest(rsem_AA1B, FAILURE, LOCKTYPE_RWSEM);
 printk("\n");

 print_testname("mixed read-write-lock");
 printk("             |");
 dotest(rlock_AA2, FAILURE, LOCKTYPE_RWLOCK);
 printk("             |");
 dotest(rsem_AA2, FAILURE, LOCKTYPE_RWSEM);
 printk("\n");

 print_testname("mixed write-read-lock");
 printk("             |");
 dotest(rlock_AA3, FAILURE, LOCKTYPE_RWLOCK);
 printk("             |");
 dotest(rsem_AA3, FAILURE, LOCKTYPE_RWSEM);
 printk("\n");

 printk("  --------------------------------------------------------------------------\n");




 DO_TESTCASE_2x6("irqs-on + irq-safe-A", irqsafe1);
 DO_TESTCASE_2x3("sirq-safe-A => hirqs-on", irqsafe2A);
 DO_TESTCASE_2x6("safe-A + irqs-on", irqsafe2B);
 DO_TESTCASE_6x6("safe-A + unsafe-B #1", irqsafe3);
 DO_TESTCASE_6x6("safe-A + unsafe-B #2", irqsafe4);
 DO_TESTCASE_6x6RW("irq lock-inversion", irq_inversion);

 DO_TESTCASE_6x2("irq read-recursion", irq_read_recursion);


 if (unexpected_testcase_failures) {
  printk("-----------------------------------------------------------------\n");
  debug_locks = 0;
  printk("BUG: %3d unexpected failures (out of %3d) - debugging disabled! |\n",
   unexpected_testcase_failures, testcase_total);
  printk("-----------------------------------------------------------------\n");
 } else if (expected_testcase_failures && testcase_successes) {
  printk("--------------------------------------------------------\n");
  printk("%3d out of %3d testcases failed, as expected. |\n",
   expected_testcase_failures, testcase_total);
  printk("----------------------------------------------------\n");
  debug_locks = 1;
 } else if (expected_testcase_failures && !testcase_successes) {
  printk("--------------------------------------------------------\n");
  printk("All %3d testcases failed, as expected. |\n",
   expected_testcase_failures);
  printk("----------------------------------------\n");
  debug_locks = 1;
 } else {
  printk("-------------------------------------------------------\n");
  printk("Good, all %3d testcases passed! |\n",
   testcase_successes);
  printk("---------------------------------\n");
  debug_locks = 1;
 }
 debug_locks_silent = 0;
}
