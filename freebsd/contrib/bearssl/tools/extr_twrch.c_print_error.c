
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BR_ERR_RECV_FATAL_ALERT ;
 int BR_ERR_SEND_FATAL_ALERT ;
 char* find_error_name (int,char const**) ;
 int fprintf (int ,char*,int,...) ;
 int stderr ;

__attribute__((used)) static void
print_error(int err)
{
 const char *name, *comment;

 name = find_error_name(err, &comment);
 if (name != ((void*)0)) {
  fprintf(stderr, "ERR %d: %s\n   %s\n", err, name, comment);
  return;
 }
 if (err >= BR_ERR_RECV_FATAL_ALERT
  && err < BR_ERR_RECV_FATAL_ALERT + 256)
 {
  fprintf(stderr, "ERR %d: received fatal alert %d\n",
   err, err - BR_ERR_RECV_FATAL_ALERT);
  return;
 }
 if (err >= BR_ERR_SEND_FATAL_ALERT
  && err < BR_ERR_SEND_FATAL_ALERT + 256)
 {
  fprintf(stderr, "ERR %d: sent fatal alert %d\n",
   err, err - BR_ERR_SEND_FATAL_ALERT);
  return;
 }
 fprintf(stderr, "ERR %d: UNKNOWN\n", err);
}
