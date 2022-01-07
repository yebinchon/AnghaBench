
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int line ;
struct TYPE_2__ {char* smarthost; char* aliases; char* spooldir; char* authpath; char* certfile; char* mailname; char* masquerade_host; char* masquerade_user; int features; int port; } ;
typedef int FILE ;


 int DEFER ;
 scalar_t__ ENOENT ;
 int EQS ;
 int EX_CONFIG ;
 int EX_NOINPUT ;
 int FULLBOUNCE ;
 int INSECURE ;
 int NULLCLIENT ;
 int SECURETRANS ;
 int STARTTLS ;
 int TLS_OPP ;
 int atoi (char*) ;
 int chomp (char*) ;
 TYPE_1__ config ;
 int errlog (int ,char*,char const*) ;
 int errlogx (int ,char*,char const*,...) ;
 scalar_t__ errno ;
 int fclose (int *) ;
 int feof (int *) ;
 int * fgets (char*,int,int *) ;
 int * fopen (char const*,char*) ;
 scalar_t__* strchr (char*,char) ;
 scalar_t__ strcmp (char*,char*) ;
 char* strdup (char*) ;
 char* strrchr (char*,char) ;
 char* strsep (char**,int ) ;

void
parse_conf(const char *config_path)
{
 char *word;
 char *data;
 FILE *conf;
 char line[2048];
 int lineno = 0;

 conf = fopen(config_path, "r");
 if (conf == ((void*)0)) {

  if (errno == ENOENT)
   return;
  errlog(EX_NOINPUT, "can not open config `%s'", config_path);

 }

 while (!feof(conf)) {
  if (fgets(line, sizeof(line), conf) == ((void*)0))
   break;
  lineno++;

  chomp(line);


  if (strchr(line, '#'))
   *strchr(line, '#') = 0;

  data = line;
  word = strsep(&data, EQS);


  if (word == ((void*)0) || *word == 0)
   continue;

  if (data != ((void*)0) && *data != 0)
   data = strdup(data);
  else
   data = ((void*)0);

  if (strcmp(word, "SMARTHOST") == 0 && data != ((void*)0))
   config.smarthost = data;
  else if (strcmp(word, "PORT") == 0 && data != ((void*)0))
   config.port = atoi(data);
  else if (strcmp(word, "ALIASES") == 0 && data != ((void*)0))
   config.aliases = data;
  else if (strcmp(word, "SPOOLDIR") == 0 && data != ((void*)0))
   config.spooldir = data;
  else if (strcmp(word, "AUTHPATH") == 0 && data != ((void*)0))
   config.authpath= data;
  else if (strcmp(word, "CERTFILE") == 0 && data != ((void*)0))
   config.certfile = data;
  else if (strcmp(word, "MAILNAME") == 0 && data != ((void*)0))
   config.mailname = data;
  else if (strcmp(word, "MASQUERADE") == 0 && data != ((void*)0)) {
   char *user = ((void*)0), *host = ((void*)0);
   if (strrchr(data, '@')) {
    host = strrchr(data, '@');
    *host = 0;
    host++;
    user = data;
   } else {
    host = data;
   }
   if (host && *host == 0)
    host = ((void*)0);
                        if (user && *user == 0)
                                user = ((void*)0);
   config.masquerade_host = host;
   config.masquerade_user = user;
  } else if (strcmp(word, "STARTTLS") == 0 && data == ((void*)0))
   config.features |= STARTTLS;
  else if (strcmp(word, "OPPORTUNISTIC_TLS") == 0 && data == ((void*)0))
   config.features |= TLS_OPP;
  else if (strcmp(word, "SECURETRANSFER") == 0 && data == ((void*)0))
   config.features |= SECURETRANS;
  else if (strcmp(word, "DEFER") == 0 && data == ((void*)0))
   config.features |= DEFER;
  else if (strcmp(word, "INSECURE") == 0 && data == ((void*)0))
   config.features |= INSECURE;
  else if (strcmp(word, "FULLBOUNCE") == 0 && data == ((void*)0))
   config.features |= FULLBOUNCE;
  else if (strcmp(word, "NULLCLIENT") == 0 && data == ((void*)0))
   config.features |= NULLCLIENT;
  else {
   errlogx(EX_CONFIG, "syntax error in %s:%d", config_path, lineno);

  }
 }

 if ((config.features & NULLCLIENT) && config.smarthost == ((void*)0)) {
  errlogx(EX_CONFIG, "%s: NULLCLIENT requires SMARTHOST", config_path);

 }

 fclose(conf);
}
