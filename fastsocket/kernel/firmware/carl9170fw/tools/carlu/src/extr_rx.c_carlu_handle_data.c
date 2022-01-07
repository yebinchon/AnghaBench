
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct carlu {int (* rx_cb ) (struct carlu*,void*,unsigned int) ;} ;


 int VERBOSE ;
 int dbg (char*) ;
 int print_hex_dump_bytes (int ,char*,void*,unsigned int) ;
 int stub1 (struct carlu*,void*,unsigned int) ;

__attribute__((used)) static void carlu_handle_data(struct carlu *ar, void *buf,
          unsigned int len)
{
 if (ar->rx_cb) {
  ar->rx_cb(ar, buf, len);
 } else {
  dbg("unhandled data:\n");
  print_hex_dump_bytes(VERBOSE, "DATA:", buf, len);
 }
}
