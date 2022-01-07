
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char* pointer ;


 int STDERR_FILENO ;
 int abort () ;
 int stacknleft ;
 char* stacknxt ;
 int write (int ,char*,int) ;

void
stunalloc(pointer p)
{
 if (p == ((void*)0)) {
  write(STDERR_FILENO, "stunalloc\n", 10);
  abort();
 }
 stacknleft += stacknxt - (char *)p;
 stacknxt = p;
}
