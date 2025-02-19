
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct print_buf {scalar_t__* buf; int size; scalar_t__* crs; } ;


 int GFP_ATOMIC ;
 int kfree (char*) ;
 char* kmalloc (int,int ) ;
 int memcpy (scalar_t__*,char*,int ) ;
 int strlen (char*) ;
 int tipc_printbuf_init (struct print_buf*,char*,int) ;
 int tipc_printbuf_move (struct print_buf*,struct print_buf*) ;
 int tipc_printbuf_reset (struct print_buf*) ;
 int tipc_printf (struct print_buf*,char*) ;

int tipc_printbuf_validate(struct print_buf *pb)
{
 char *err = "\n\n*** PRINT BUFFER OVERFLOW ***\n\n";
 char *cp_buf;
 struct print_buf cb;

 if (!pb->buf)
  return 0;

 if (pb->buf[pb->size - 1] == 0) {
  cp_buf = kmalloc(pb->size, GFP_ATOMIC);
  if (cp_buf) {
   tipc_printbuf_init(&cb, cp_buf, pb->size);
   tipc_printbuf_move(&cb, pb);
   tipc_printbuf_move(pb, &cb);
   kfree(cp_buf);
   memcpy(pb->buf, err, strlen(err));
  } else {
   tipc_printbuf_reset(pb);
   tipc_printf(pb, err);
  }
 }
 return (pb->crs - pb->buf + 1);
}
