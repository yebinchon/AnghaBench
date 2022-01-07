
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int type; void* h; void* t; } ;
typedef TYPE_1__ undo_t ;


 int USIZE ;
 int clear_undo_stack () ;
 char* errmsg ;
 int errno ;
 int fprintf (int ,char*,char*) ;
 int free (TYPE_1__*) ;
 void* get_addressed_line_node (long) ;
 scalar_t__ malloc (int) ;
 scalar_t__ realloc (TYPE_1__*,int) ;
 int stderr ;
 char* strerror (int ) ;
 int u_p ;
 int usize ;
 TYPE_1__* ustack ;

undo_t *
push_undo_stack(int type, long from, long to)
{
 undo_t *t;
 t = ustack;
 if (u_p < usize ||
     (t = (undo_t *) realloc(ustack, (usize += USIZE) * sizeof(undo_t))) != ((void*)0)) {
  ustack = t;
  ustack[u_p].type = type;
  ustack[u_p].t = get_addressed_line_node(to);
  ustack[u_p].h = get_addressed_line_node(from);
  return ustack + u_p++;
 }

 fprintf(stderr, "%s\n", strerror(errno));
 errmsg = "out of memory";
 clear_undo_stack();
 free(ustack);
 ustack = ((void*)0);
 usize = 0;
 return ((void*)0);
}
