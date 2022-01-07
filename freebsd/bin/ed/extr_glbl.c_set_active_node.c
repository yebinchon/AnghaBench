
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int line_t ;


 int ERR ;
 int MINBUFSZ ;
 int SPL0 () ;
 int SPL1 () ;
 size_t active_last ;
 int ** active_list ;
 size_t active_size ;
 char* errmsg ;
 int errno ;
 int fprintf (int ,char*,char*) ;
 scalar_t__ malloc (int) ;
 scalar_t__ realloc (int **,int) ;
 int stderr ;
 char* strerror (int ) ;

int
set_active_node(line_t *lp)
{
 if (active_last + 1 > active_size) {
  size_t ti = active_size;
  line_t **ts;
  SPL1();



   if ((ts = (line_t **) realloc(active_list,
       (ti += MINBUFSZ) * sizeof(line_t *))) == ((void*)0)) {
    fprintf(stderr, "%s\n", strerror(errno));
    errmsg = "out of memory";
    SPL0();
    return ERR;
   }
  active_size = ti;
  active_list = ts;
  SPL0();
 }
 active_list[active_last++] = lp;
 return 0;
}
