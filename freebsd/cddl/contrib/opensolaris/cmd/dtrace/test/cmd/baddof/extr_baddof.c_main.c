
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int dtrace_prog_t ;
typedef int dtrace_hdl_t ;
struct TYPE_2__ {int dofh_loadsz; } ;
typedef TYPE_1__ dof_hdr_t ;
typedef int FILE ;


 int DTRACE_VERSION ;
 int O_RDWR ;
 int bcopy (unsigned char*,unsigned char*,int) ;
 int close (int) ;
 int corrupt (int,unsigned char*,int) ;
 unsigned char* dtrace_dof_create (int *,int *,int ) ;
 int dtrace_errmsg (int *,int) ;
 int dtrace_errno (int *) ;
 int * dtrace_open (int ,int ,int*) ;
 int * dtrace_program_fcompile (int *,int *,int ,int ,int *) ;
 int fatal (char*,...) ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 unsigned char* malloc (int) ;
 int open (char*,int ) ;

int
main(int argc, char **argv)
{
 char *filename = argv[1];
 dtrace_hdl_t *dtp;
 dtrace_prog_t *pgp;
 int err, fd, len;
 FILE *fp;
 unsigned char *dof, *copy;

 if (argc < 2)
  fatal("expected D script as argument\n");

 if ((fp = fopen(filename, "r")) == ((void*)0))
  fatal("couldn't open %s", filename);




 if ((dtp = dtrace_open(DTRACE_VERSION, 0, &err)) == ((void*)0)) {
  fatal("cannot open dtrace library: %s\n",
      dtrace_errmsg(((void*)0), err));
 }

 pgp = dtrace_program_fcompile(dtp, fp, 0, 0, ((void*)0));
 fclose(fp);

 if (pgp == ((void*)0)) {
  fatal("failed to compile script %s: %s\n", filename,
      dtrace_errmsg(dtp, dtrace_errno(dtp)));
 }

 dof = dtrace_dof_create(dtp, pgp, 0);
 len = ((dof_hdr_t *)dof)->dofh_loadsz;

 if ((copy = malloc(len)) == ((void*)0))
  fatal("could not allocate copy of %d bytes", len);

 for (;;) {
  bcopy(dof, copy, len);



  fd = open("/devices/pseudo/dtrace@0:dtrace", O_RDWR);

  if (fd == -1)
   fatal("couldn't open DTrace pseudo device");

  corrupt(fd, copy, len);
  close(fd);
 }


 return (0);
}
