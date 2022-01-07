
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct queue {char* sender; char* id; int mailf; int queue; } ;
struct qitem {scalar_t__* sender; char* addr; int mailf; } ;
typedef int line ;
typedef int bounceq ;
struct TYPE_2__ {int features; } ;


 int EXPAND_WILDCARD ;
 int EX_IOERR ;
 int EX_SOFTWARE ;
 int FULLBOUNCE ;
 int LIST_INIT (int *) ;
 int LOG_CRIT ;
 int LOG_ERR ;
 int LOG_INFO ;
 int SEEK_SET ;
 char* VERSION ;
 scalar_t__ add_recp (struct queue*,scalar_t__*,int ) ;
 int bzero (struct queue*,int) ;
 TYPE_1__ config ;
 int delqueue (struct qitem*) ;
 int exit (int ) ;
 int feof (int ) ;
 int * fgets (char*,int,int ) ;
 int fprintf (int ,char*,char*,char*,char*,char*,char*,scalar_t__*,char*,char*,char*,char*,char*,char*,char const*,char*) ;
 size_t fread (char*,int,int,int ) ;
 scalar_t__ fseek (int ,int ,int ) ;
 int fwrite (char*,int,int,int ) ;
 char* hostname () ;
 scalar_t__ linkspool (struct queue*) ;
 scalar_t__ newspoolf (struct queue*) ;
 char* rfc822date () ;
 int run_queue (struct queue*) ;
 int setlogident (char*,char*) ;
 int strlen (char*) ;
 int syslog (int ,char*,...) ;

void
bounce(struct qitem *it, const char *reason)
{
 struct queue bounceq;
 char line[1000];
 size_t pos;
 int error;


 if (it->sender[0] == 0) {
  syslog(LOG_INFO, "can not bounce a bounce message, discarding");
  exit(EX_SOFTWARE);
 }

 bzero(&bounceq, sizeof(bounceq));
 LIST_INIT(&bounceq.queue);
 bounceq.sender = "";
 if (add_recp(&bounceq, it->sender, EXPAND_WILDCARD) != 0)
  goto fail;

 if (newspoolf(&bounceq) != 0)
  goto fail;

 syslog(LOG_ERR, "delivery failed, bouncing as %s", bounceq.id);
 setlogident("%s", bounceq.id);

 error = fprintf(bounceq.mailf,
  "Received: from MAILER-DAEMON\n"
  "\tid %s\n"
  "\tby %s (%s);\n"
  "\t%s\n"
  "X-Original-To: <%s>\n"
  "From: MAILER-DAEMON <>\n"
  "To: %s\n"
  "Subject: Mail delivery failed\n"
  "Message-Id: <%s@%s>\n"
  "Date: %s\n"
  "\n"
  "This is the %s at %s.\n"
  "\n"
  "There was an error delivering your mail to <%s>.\n"
  "\n"
  "%s\n"
  "\n"
  "%s\n"
  "\n",
  bounceq.id,
  hostname(), VERSION,
  rfc822date(),
  it->addr,
  it->sender,
  bounceq.id, hostname(),
  rfc822date(),
  VERSION, hostname(),
  it->addr,
  reason,
  config.features & FULLBOUNCE ?
      "Original message follows." :
      "Message headers follow.");
 if (error < 0)
  goto fail;

 if (fseek(it->mailf, 0, SEEK_SET) != 0)
  goto fail;
 if (config.features & FULLBOUNCE) {
  while ((pos = fread(line, 1, sizeof(line), it->mailf)) > 0) {
   if (fwrite(line, 1, pos, bounceq.mailf) != pos)
    goto fail;
  }
 } else {
  while (!feof(it->mailf)) {
   if (fgets(line, sizeof(line), it->mailf) == ((void*)0))
    break;
   if (line[0] == '\n')
    break;
   if (fwrite(line, strlen(line), 1, bounceq.mailf) != 1)
    goto fail;
  }
 }

 if (linkspool(&bounceq) != 0)
  goto fail;


 delqueue(it);

 run_queue(&bounceq);


fail:
 syslog(LOG_CRIT, "error creating bounce: %m");
 delqueue(it);
 exit(EX_IOERR);
}
