
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct seq_file {int dummy; } ;
struct kmemleak_object {int size; scalar_t__ pointer; } ;
typedef int linebuf ;


 int HEX_ASCII ;
 int HEX_GROUP_SIZE ;
 int HEX_MAX_LINES ;
 int HEX_ROW_SIZE ;
 int hex_dump_to_buffer (int const*,int,int,int ,unsigned char*,int,int ) ;
 int min (int,int) ;
 int seq_printf (struct seq_file*,char*,...) ;

__attribute__((used)) static void hex_dump_object(struct seq_file *seq,
       struct kmemleak_object *object)
{
 const u8 *ptr = (const u8 *)object->pointer;
 int i, len, remaining;
 unsigned char linebuf[HEX_ROW_SIZE * 5];


 remaining = len =
  min(object->size, (size_t)(HEX_MAX_LINES * HEX_ROW_SIZE));

 seq_printf(seq, "  hex dump (first %d bytes):\n", len);
 for (i = 0; i < len; i += HEX_ROW_SIZE) {
  int linelen = min(remaining, HEX_ROW_SIZE);

  remaining -= HEX_ROW_SIZE;
  hex_dump_to_buffer(ptr + i, linelen, HEX_ROW_SIZE,
       HEX_GROUP_SIZE, linebuf, sizeof(linebuf),
       HEX_ASCII);
  seq_printf(seq, "    %s\n", linebuf);
 }
}
