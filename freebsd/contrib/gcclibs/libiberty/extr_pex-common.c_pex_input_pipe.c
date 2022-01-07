
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pex_obj {scalar_t__ count; int flags; int next_input; TYPE_1__* funcs; scalar_t__ next_input_name; } ;
struct TYPE_2__ {scalar_t__ (* pipe ) (struct pex_obj*,int*,int) ;int (* close ) (struct pex_obj*,int) ;int * (* fdopenw ) (struct pex_obj*,int,int) ;} ;
typedef int FILE ;


 int EINVAL ;
 int PEX_USE_PIPES ;
 size_t READ_PORT ;
 int STDIN_FILE_NO ;
 size_t WRITE_PORT ;
 int errno ;
 scalar_t__ stub1 (struct pex_obj*,int*,int) ;
 int * stub2 (struct pex_obj*,int,int) ;
 int stub3 (struct pex_obj*,int) ;
 int stub4 (struct pex_obj*,int) ;

FILE *
pex_input_pipe (struct pex_obj *obj, int binary)
{
  int p[2];
  FILE *f;


  if (obj->count > 0)
    goto usage_error;



  if (! (obj->flags & PEX_USE_PIPES))
    goto usage_error;



  if ((obj->next_input >= 0 && obj->next_input != STDIN_FILE_NO)
      || obj->next_input_name)
    goto usage_error;

  if (obj->funcs->pipe (obj, p, binary != 0) < 0)
    return ((void*)0);

  f = obj->funcs->fdopenw (obj, p[WRITE_PORT], binary != 0);
  if (! f)
    {
      int saved_errno = errno;
      obj->funcs->close (obj, p[READ_PORT]);
      obj->funcs->close (obj, p[WRITE_PORT]);
      errno = saved_errno;
      return ((void*)0);
    }

  obj->next_input = p[READ_PORT];

  return f;

 usage_error:
  errno = EINVAL;
  return ((void*)0);
}
