
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int buf; } ;
struct child_process {char const** argv; int err; int stdout_to_stderr; } ;
typedef int ec_process ;


 struct strbuf STRBUF_INIT ;
 int atoi (int ) ;
 int close (int) ;
 int finish_command (struct child_process*) ;
 int fprintf (int ,char*,...) ;
 int memset (struct child_process*,int ,int) ;
 scalar_t__ prefixcmp (int ,char*) ;
 scalar_t__ start_command (struct child_process*) ;
 int stderr ;
 int strbuf_read (struct strbuf*,int,int) ;
 int strbuf_release (struct strbuf*) ;
 int strbuf_remove (struct strbuf*,int ,int ) ;
 int strlen (char*) ;

__attribute__((used)) static int check_emacsclient_version(void)
{
 struct strbuf buffer = STRBUF_INIT;
 struct child_process ec_process;
 const char *argv_ec[] = { "emacsclient", "--version", ((void*)0) };
 int version;


 memset(&ec_process, 0, sizeof(ec_process));
 ec_process.argv = argv_ec;
 ec_process.err = -1;
 ec_process.stdout_to_stderr = 1;
 if (start_command(&ec_process)) {
  fprintf(stderr, "Failed to start emacsclient.\n");
  return -1;
 }
 strbuf_read(&buffer, ec_process.err, 20);
 close(ec_process.err);





 finish_command(&ec_process);

 if (prefixcmp(buffer.buf, "emacsclient")) {
  fprintf(stderr, "Failed to parse emacsclient version.\n");
  strbuf_release(&buffer);
  return -1;
 }

 strbuf_remove(&buffer, 0, strlen("emacsclient"));
 version = atoi(buffer.buf);

 if (version < 22) {
  fprintf(stderr,
   "emacsclient version '%d' too old (< 22).\n",
   version);
  strbuf_release(&buffer);
  return -1;
 }

 strbuf_release(&buffer);
 return 0;
}
