
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct debuginfo {scalar_t__ dwfl; } ;


 int dwfl_end (scalar_t__) ;
 int free (struct debuginfo*) ;

void debuginfo__delete(struct debuginfo *self)
{
 if (self) {
  if (self->dwfl)
   dwfl_end(self->dwfl);
  free(self);
 }
}
