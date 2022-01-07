
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int global_signal_val ;

__attribute__((used)) static void signal_handler(int sig)
{
 global_signal_val = sig;
}
