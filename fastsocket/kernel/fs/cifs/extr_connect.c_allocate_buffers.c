
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct TCP_Server_Info {char* bigbuf; char* smallbuf; scalar_t__ large_buf; } ;


 int cERROR (int,char*) ;
 scalar_t__ cifs_buf_get () ;
 scalar_t__ cifs_small_buf_get () ;
 int header_size () ;
 int memset (char*,int ,int ) ;
 int msleep (int) ;

__attribute__((used)) static bool
allocate_buffers(struct TCP_Server_Info *server)
{
 if (!server->bigbuf) {
  server->bigbuf = (char *)cifs_buf_get();
  if (!server->bigbuf) {
   cERROR(1, "No memory for large SMB response");
   msleep(3000);

   return 0;
  }
 } else if (server->large_buf) {

  memset(server->bigbuf, 0, header_size());
 }

 if (!server->smallbuf) {
  server->smallbuf = (char *)cifs_small_buf_get();
  if (!server->smallbuf) {
   cERROR(1, "No memory for SMB response");
   msleep(1000);

   return 0;
  }

 } else {

  memset(server->smallbuf, 0, header_size());
 }

 return 1;
}
