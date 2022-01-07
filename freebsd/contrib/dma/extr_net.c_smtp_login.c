
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int features; } ;


 int INSECURE ;
 int LOG_ERR ;
 int LOG_NOTICE ;
 int LOG_WARNING ;
 int SECURETRANS ;
 int base64_encode (char*,int ,char**) ;
 TYPE_1__ config ;
 int free (char*) ;
 int neterr ;
 int read_remote (int,int ,int *) ;
 int send_remote_command (int,char*,...) ;
 int smtp_auth_md5 (int,char*,char*) ;
 int strlen (char*) ;
 int syslog (int ,char*,...) ;

__attribute__((used)) static int
smtp_login(int fd, char *login, char* password)
{
 char *temp;
 int len, res = 0;

 res = smtp_auth_md5(fd, login, password);
 if (res == 0) {
  return (0);
 } else if (res == -2) {




  return (1);
 }

 if ((config.features & INSECURE) != 0 ||
     (config.features & SECURETRANS) != 0) {

  send_remote_command(fd, "AUTH LOGIN");
  if (read_remote(fd, 0, ((void*)0)) != 3) {
   syslog(LOG_NOTICE, "remote delivery deferred:"
     " AUTH login not available: %s",
     neterr);
   return (1);
  }

  len = base64_encode(login, strlen(login), &temp);
  if (len < 0) {
encerr:
   syslog(LOG_ERR, "can not encode auth reply: %m");
   return (1);
  }

  send_remote_command(fd, "%s", temp);
  free(temp);
  res = read_remote(fd, 0, ((void*)0));
  if (res != 3) {
   syslog(LOG_NOTICE, "remote delivery %s: AUTH login failed: %s",
          res == 5 ? "failed" : "deferred", neterr);
   return (res == 5 ? -1 : 1);
  }

  len = base64_encode(password, strlen(password), &temp);
  if (len < 0)
   goto encerr;

  send_remote_command(fd, "%s", temp);
  free(temp);
  res = read_remote(fd, 0, ((void*)0));
  if (res != 2) {
   syslog(LOG_NOTICE, "remote delivery %s: Authentication failed: %s",
     res == 5 ? "failed" : "deferred", neterr);
   return (res == 5 ? -1 : 1);
  }
 } else {
  syslog(LOG_WARNING, "non-encrypted SMTP login is disabled in config, so skipping it. ");
  return (1);
 }

 return (0);
}
