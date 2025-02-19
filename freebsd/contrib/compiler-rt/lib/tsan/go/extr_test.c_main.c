
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAP_ANON ;
 scalar_t__ MAP_FAILED ;
 int MAP_FIXED ;
 int MAP_PRIVATE ;
 int PROT_READ ;
 int PROT_WRITE ;
 int __tsan_acquire (void*,char*) ;
 int __tsan_fini () ;
 int __tsan_free (char*,int) ;
 int __tsan_func_enter (void*,char*) ;
 int __tsan_func_exit (void*) ;
 int __tsan_go_end (void*) ;
 int __tsan_go_start (void*,void**,char*) ;
 int __tsan_init (void**,void**,int ) ;
 int __tsan_malloc (void*,char*,char*,int) ;
 int __tsan_map_shadow (char*,int) ;
 int __tsan_proc_create (void**) ;
 int __tsan_proc_destroy (void*) ;
 int __tsan_read (void*,char*,char*) ;
 int __tsan_release (void*,char*) ;
 int __tsan_release_merge (void*,char*) ;
 int __tsan_write (void*,char*,char*) ;
 int barfoo ;
 scalar_t__ buf0 ;
 void* current_proc ;
 int errno ;
 int foobar ;
 int fprintf (int ,char*,int ,int) ;
 int go_heap ;
 scalar_t__ mmap (int ,int,int,int,int,int ) ;
 int stderr ;
 int symbolize_cb ;

int main(void) {
  void *thr0 = 0;
  void *proc0 = 0;
  __tsan_init(&thr0, &proc0, symbolize_cb);
  current_proc = proc0;


  buf0 = mmap(go_heap, 16384, PROT_READ | PROT_WRITE,
              MAP_PRIVATE | MAP_FIXED | MAP_ANON, -1, 0);
  if (buf0 == MAP_FAILED) {
    fprintf(stderr, "failed to allocate Go-like heap at %p; errno %d\n",
            go_heap, errno);
    return 1;
  }
  char *buf = (char*)((unsigned long)buf0 + (64<<10) - 1 & ~((64<<10) - 1));
  __tsan_map_shadow(buf, 4096);
  __tsan_malloc(thr0, (char*)&barfoo + 1, buf, 10);
  __tsan_free(buf, 10);
  __tsan_func_enter(thr0, (char*)&main + 1);
  __tsan_malloc(thr0, (char*)&barfoo + 1, buf, 10);
  __tsan_release(thr0, buf);
  __tsan_release_merge(thr0, buf);
  void *thr1 = 0;
  __tsan_go_start(thr0, &thr1, (char*)&barfoo + 1);
  void *thr2 = 0;
  __tsan_go_start(thr0, &thr2, (char*)&barfoo + 1);
  __tsan_func_exit(thr0);
  __tsan_func_enter(thr1, (char*)&foobar + 1);
  __tsan_func_enter(thr1, (char*)&foobar + 1);
  __tsan_write(thr1, buf, (char*)&barfoo + 1);
  __tsan_acquire(thr1, buf);
  __tsan_func_exit(thr1);
  __tsan_func_exit(thr1);
  __tsan_go_end(thr1);
  void *proc1 = 0;
  __tsan_proc_create(&proc1);
  current_proc = proc1;
  __tsan_func_enter(thr2, (char*)&foobar + 1);
  __tsan_read(thr2, buf, (char*)&barfoo + 1);
  __tsan_free(buf, 10);
  __tsan_func_exit(thr2);
  __tsan_go_end(thr2);
  __tsan_proc_destroy(proc1);
  current_proc = proc0;
  __tsan_fini();
  return 0;
}
