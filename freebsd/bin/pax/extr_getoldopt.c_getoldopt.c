
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fprintf (int ,char*,char*,char) ;
 int getopt (int,char**,char const*) ;
 char* optarg ;
 int optind ;
 int stderr ;
 char* strchr (char const*,char) ;

int
getoldopt(int argc, char **argv, const char *optstring)
{
 static char *key;
 static char use_getopt;
 char c;
 char *place;

 optarg = ((void*)0);

 if (key == ((void*)0)) {
  if (argc < 2)
   return (-1);
  key = argv[1];
  if (*key == '-')
   use_getopt++;
  else
   optind = 2;
 }

 if (use_getopt)
  return (getopt(argc, argv, optstring));

 c = *key++;
 if (c == '\0') {
  key--;
  return (-1);
 }
 place = strchr(optstring, c);

 if (place == ((void*)0) || c == ':') {
  fprintf(stderr, "%s: unknown option %c\n", argv[0], c);
  return ('?');
 }

 place++;
 if (*place == ':') {
  if (optind < argc) {
   optarg = argv[optind];
   optind++;
  } else {
   fprintf(stderr, "%s: %c argument missing\n",
    argv[0], c);
   return ('?');
  }
 }

 return (c);
}
