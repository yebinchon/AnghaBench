
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int unichar ;
struct bin_messagetable_item {scalar_t__ data; int flags; int length; } ;
struct bin_messagetable {TYPE_1__* items; int cblocks; } ;
typedef size_t rc_uint_type ;
typedef int bfd_byte ;
struct TYPE_2__ {int offset; int highid; int lowid; } ;
typedef int FILE ;


 size_t BIN_MESSAGETABLE_BLOCK_SIZE ;
 size_t BIN_MESSAGETABLE_ITEM_SIZE ;
 size_t BIN_MESSAGETABLE_SIZE ;
 size_t MESSAGE_RESOURCE_UNICODE ;
 int ascii_print (int *,char const*,size_t) ;
 int fprintf (int *,char*) ;
 int unicode_print (int *,int const*,size_t) ;
 size_t windres_get_16 (int *,int ,int) ;
 size_t windres_get_32 (int *,int ,int) ;
 int wr_print_flush (int *) ;
 int wr_printcomment (int *,char*,...) ;
 int write_rc_datablock (int *,size_t,int const*,int ,int ,int ) ;
 int wrtarget ;

__attribute__((used)) static void
write_rc_messagetable (FILE *e, rc_uint_type length, const bfd_byte *data)
{
  int has_error = 0;
  const struct bin_messagetable *mt;
  fprintf (e, "BEGIN\n");

  write_rc_datablock (e, length, data, 0, 0, 0);

  fprintf (e, "\n");
  wr_printcomment (e, "MC syntax dump");
  if (length < BIN_MESSAGETABLE_SIZE)
    has_error = 1;
  else
    do {
      rc_uint_type m, i;
      mt = (const struct bin_messagetable *) data;
      m = windres_get_32 (&wrtarget, mt->cblocks, length);
      if (length < (BIN_MESSAGETABLE_SIZE + m * BIN_MESSAGETABLE_BLOCK_SIZE))
 {
   has_error = 1;
   break;
 }
      for (i = 0; i < m; i++)
 {
   rc_uint_type low, high, offset;
   const struct bin_messagetable_item *mti;

   low = windres_get_32 (&wrtarget, mt->items[i].lowid, 4);
   high = windres_get_32 (&wrtarget, mt->items[i].highid, 4);
   offset = windres_get_32 (&wrtarget, mt->items[i].offset, 4);
   while (low <= high)
     {
       rc_uint_type elen, flags;
       if ((offset + BIN_MESSAGETABLE_ITEM_SIZE) > length)
  {
    has_error = 1;
   break;
  }
       mti = (const struct bin_messagetable_item *) &data[offset];
       elen = windres_get_16 (&wrtarget, mti->length, 2);
       flags = windres_get_16 (&wrtarget, mti->flags, 2);
       if ((offset + elen) > length)
  {
    has_error = 1;
    break;
  }
       wr_printcomment (e, "MessageId = 0x%x", low);
       wr_printcomment (e, "");
       if ((flags & MESSAGE_RESOURCE_UNICODE) == MESSAGE_RESOURCE_UNICODE)
  unicode_print (e, (const unichar *) mti->data,
          (elen - BIN_MESSAGETABLE_ITEM_SIZE) / 2);
       else
  ascii_print (e, (const char *) mti->data,
        (elen - BIN_MESSAGETABLE_ITEM_SIZE));
       wr_printcomment (e,"");
       ++low;
       offset += elen;
     }
 }
    } while (0);
  if (has_error)
    wr_printcomment (e, "Illegal data");
  wr_print_flush (e);
  fprintf (e, "END\n");
}
