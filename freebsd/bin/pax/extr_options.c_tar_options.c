
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;




 int BZIP2_CMD ;
 int COMPRESS_CMD ;
 char* DEV_0 ;
 char* DEV_1 ;
 char* DEV_4 ;
 char* DEV_5 ;
 char* DEV_7 ;
 char* DEV_8 ;

 size_t F_OTAR ;
 size_t F_TAR ;
 int GZIP_CMD ;
 int Hflag ;

 int Lflag ;
 int Xflag ;
 char* _PATH_DEFTAPE ;
 int act ;
 char* arcname ;
 char* chdname ;
 int exit (int) ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int * frmt ;
 int * fsub ;
 int ftree_add (char*,int) ;
 char* get_line (int *) ;
 int get_line_error ;
 char* getenv (char*) ;
 int getoldopt (int,char**,char*) ;
 int gzip_program ;
 int iflag ;
 int listf ;
 int maxflt ;
 int nflag ;
 int opt_add (char*) ;
 char* optarg ;
 scalar_t__ optind ;
 int pat_add (char*,char*) ;
 int paxwarn (int,char*,...) ;
 int pids ;
 int pmode ;
 int pmtime ;
 struct incfile* realloc (struct incfile*,int) ;
 int rep_add (char*) ;
 int rmleadslash ;
 int stderr ;
 int * stdin ;
 int stdout ;
 scalar_t__ str_offt (char*) ;
 int strcmp (char*,char*) ;
 int tar_usage () ;
 int vflag ;
 int wrblksz ;

__attribute__((used)) static void
tar_options(int argc, char **argv)
{
 int c;
 int fstdin = 0;
 int tar_Oflag = 0;
 int nincfiles = 0;
 int incfiles_max = 0;
 struct incfile {
  char *file;
  char *dir;
 };
 struct incfile *incfiles = ((void*)0);




 rmleadslash = 1;




 while ((c = getoldopt(argc, argv,
     "b:cef:hjmopqruts:vwxyzBC:HI:LOPXZ014578")) != -1) {
  switch(c) {
  case 'b':



   if ((wrblksz = (int)str_offt(optarg)) <= 0) {
    paxwarn(1, "Invalid block size %s", optarg);
    tar_usage();
   }
   wrblksz *= 512;
   break;
  case 'c':



   act = 130;
   break;
  case 'e':



   maxflt = 0;
   break;
  case 'f':



   if ((optarg[0] == '-') && (optarg[1]== '\0')) {



    fstdin = 1;
    arcname = ((void*)0);
    break;
   }
   fstdin = 0;
   arcname = optarg;
   break;
  case 'h':



   Lflag = 1;
   break;
  case 'j':
  case 'y':



   gzip_program = BZIP2_CMD;
   break;
  case 'm':



   pmtime = 0;
   break;
  case 'o':
   if (opt_add("write_opt=nodir") < 0)
    tar_usage();
  case 'O':
   tar_Oflag = 1;
   break;
  case 'p':



   pmode = 1;
   pids = 1;
   break;
  case 'q':



   nflag = 1;
   break;
  case 'r':
  case 'u':



   act = 131;
   break;
  case 's':



   if (rep_add(optarg) < 0) {
    tar_usage();
    break;
   }
   break;
  case 't':



   act = 128;
   break;
  case 'v':



   vflag++;
   break;
  case 'w':



   iflag = 1;
   break;
  case 'x':




   act = 129;
   pmtime = 1;
   break;
  case 'z':



   gzip_program = GZIP_CMD;
   break;
  case 'B':



   break;
  case 'C':
   chdname = optarg;
   break;
  case 'H':



   Hflag = 1;
   break;
  case 'I':
   if (++nincfiles > incfiles_max) {
    incfiles_max = nincfiles + 3;
    incfiles = realloc(incfiles,
        sizeof(*incfiles) * incfiles_max);
    if (incfiles == ((void*)0)) {
     paxwarn(0, "Unable to allocate space "
         "for option list");
     exit(1);
    }
   }
   incfiles[nincfiles - 1].file = optarg;
   incfiles[nincfiles - 1].dir = chdname;
   break;
  case 'L':



   Lflag = 1;
   break;
  case 'P':



   rmleadslash = 0;
   break;
  case 'X':



   Xflag = 1;
   break;
  case 'Z':



   gzip_program = COMPRESS_CMD;
   break;
  case '0':
   arcname = DEV_0;
   break;
  case '1':
   arcname = DEV_1;
   break;
  case '4':
   arcname = DEV_4;
   break;
  case '5':
   arcname = DEV_5;
   break;
  case '7':
   arcname = DEV_7;
   break;
  case '8':
   arcname = DEV_8;
   break;
  default:
   tar_usage();
   break;
  }
 }
 argc -= optind;
 argv += optind;


 if (fstdin == 1 && act == 130)
  listf = stderr;
 else
  listf = stdout;


 if ((act == 130 || act == 131) && argc == 0 && nincfiles == 0)
  exit(0);





 if (act == 130 || act == 131)
  frmt = &(fsub[tar_Oflag ? F_OTAR : F_TAR]);
 else if (tar_Oflag) {
  paxwarn(1, "The -O/-o options are only valid when writing an archive");
  tar_usage();
 }




 switch (act) {
 case 128:
 case 129:
 default:
  {
   int sawpat = 0;
   char *file, *dir = ((void*)0);

   while (nincfiles || *argv != ((void*)0)) {







    if (nincfiles) {
     file = incfiles->file;
     dir = incfiles->dir;
     incfiles++;
     nincfiles--;
    } else if (strcmp(*argv, "-I") == 0) {
     if (*++argv == ((void*)0))
      break;
     file = *argv++;
     dir = chdname;
    } else
     file = ((void*)0);
    if (file != ((void*)0)) {
     FILE *fp;
     char *str;

     if (strcmp(file, "-") == 0)
      fp = stdin;
     else if ((fp = fopen(file, "r")) == ((void*)0)) {
      paxwarn(1, "Unable to open file '%s' for read", file);
      tar_usage();
     }
     while ((str = get_line(fp)) != ((void*)0)) {
      if (pat_add(str, dir) < 0)
       tar_usage();
      sawpat = 1;
     }
     if (strcmp(file, "-") != 0)
      fclose(fp);
     if (get_line_error) {
      paxwarn(1, "Problem with file '%s'", file);
      tar_usage();
     }
    } else if (strcmp(*argv, "-C") == 0) {
     if (*++argv == ((void*)0))
      break;
     chdname = *argv++;
    } else if (pat_add(*argv++, chdname) < 0)
     tar_usage();
    else
     sawpat = 1;
   }





   if (sawpat > 0)
    chdname = ((void*)0);
  }
  break;
 case 130:
 case 131:
  if (chdname != ((void*)0)) {
   if (ftree_add(chdname, 1) < 0)
    tar_usage();
  }

  while (nincfiles || *argv != ((void*)0)) {
   char *file, *dir = ((void*)0);







   if (nincfiles) {
    file = incfiles->file;
    dir = incfiles->dir;
    incfiles++;
    nincfiles--;
   } else if (strcmp(*argv, "-I") == 0) {
    if (*++argv == ((void*)0))
     break;
    file = *argv++;
    dir = ((void*)0);
   } else
    file = ((void*)0);
   if (file != ((void*)0)) {
    FILE *fp;
    char *str;


    if (dir) {
     if (ftree_add(dir, 1) < 0)
      tar_usage();
    }

    if (strcmp(file, "-") == 0)
     fp = stdin;
    else if ((fp = fopen(file, "r")) == ((void*)0)) {
     paxwarn(1, "Unable to open file '%s' for read", file);
     tar_usage();
    }
    while ((str = get_line(fp)) != ((void*)0)) {
     if (ftree_add(str, 0) < 0)
      tar_usage();
    }
    if (strcmp(file, "-") != 0)
     fclose(fp);
    if (get_line_error) {
     paxwarn(1, "Problem with file '%s'",
         file);
     tar_usage();
    }
   } else if (strcmp(*argv, "-C") == 0) {
    if (*++argv == ((void*)0))
     break;
    if (ftree_add(*argv++, 1) < 0)
     tar_usage();
   } else if (ftree_add(*argv++, 0) < 0)
    tar_usage();
  }



  maxflt = 0;
  break;
 }
 if (!fstdin && ((arcname == ((void*)0)) || (*arcname == '\0'))) {
  arcname = getenv("TAPE");
  if ((arcname == ((void*)0)) || (*arcname == '\0'))
   arcname = _PATH_DEFTAPE;
 }
}
