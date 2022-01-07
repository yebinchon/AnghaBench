
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int abort () ;
 void* current_proc ;

void symbolize_cb(long cmd, void *ctx) {
  switch (cmd) {
  case 0:
    if (current_proc == 0)
      abort();
    *(void**)ctx = current_proc;
  }
}
