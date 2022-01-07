
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int pe_fd; int pe_cmd; int pe_scn; int pe_obj; } ;
typedef int PE_Object ;
typedef int PE_Cmd ;
typedef TYPE_1__ PE ;


 int EINVAL ;
 int ENOMEM ;



 int PE_O_COFF ;
 int PE_O_PE32 ;
 int STAILQ_INIT (int *) ;
 TYPE_1__* calloc (int,int) ;
 int errno ;
 int libpe_open_object (TYPE_1__*) ;
 int pe_finish (TYPE_1__*) ;

PE *
pe_init(int fd, PE_Cmd c, PE_Object o)
{
 PE *pe;

 if ((pe = calloc(1, sizeof(*pe))) == ((void*)0)) {
  errno = ENOMEM;
  return (((void*)0));
 }
 pe->pe_fd = fd;
 pe->pe_cmd = c;
 pe->pe_obj = o;
 STAILQ_INIT(&pe->pe_scn);

 switch (c) {
 case 129:
 case 130:
  if (libpe_open_object(pe) < 0)
   goto init_fail;
  break;

 case 128:
  if (o < PE_O_PE32 || o > PE_O_COFF) {
   errno = EINVAL;
   goto init_fail;
  }
  break;

 default:
  errno = EINVAL;
  goto init_fail;
 }

 return (pe);

init_fail:
 pe_finish(pe);
 return (((void*)0));
}
