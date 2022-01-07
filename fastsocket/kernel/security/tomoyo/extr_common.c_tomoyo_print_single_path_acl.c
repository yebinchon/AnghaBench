
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct tomoyo_single_path_acl_record {int perm; TYPE_1__* filename; } ;
struct tomoyo_io_buffer {int read_bit; int read_avail; } ;
struct TYPE_2__ {char* name; } ;


 int TOMOYO_MAX_SINGLE_PATH_OPERATION ;
 int TOMOYO_TYPE_READ_ACL ;
 int TOMOYO_TYPE_READ_WRITE_ACL ;
 int TOMOYO_TYPE_WRITE_ACL ;
 int tomoyo_io_printf (struct tomoyo_io_buffer*,char*,char const*,char const*,char const*) ;
 char* tomoyo_sp2keyword (int) ;

__attribute__((used)) static bool tomoyo_print_single_path_acl(struct tomoyo_io_buffer *head,
      struct tomoyo_single_path_acl_record *
      ptr)
{
 int pos;
 u8 bit;
 const char *atmark = "";
 const char *filename;
 const u16 perm = ptr->perm;

 filename = ptr->filename->name;
 for (bit = head->read_bit; bit < TOMOYO_MAX_SINGLE_PATH_OPERATION;
      bit++) {
  const char *msg;
  if (!(perm & (1 << bit)))
   continue;

  if ((bit == TOMOYO_TYPE_READ_ACL ||
       bit == TOMOYO_TYPE_WRITE_ACL)
      && (perm & (1 << TOMOYO_TYPE_READ_WRITE_ACL)))
   continue;
  msg = tomoyo_sp2keyword(bit);
  pos = head->read_avail;
  if (!tomoyo_io_printf(head, "allow_%s %s%s\n", msg,
          atmark, filename))
   goto out;
 }
 head->read_bit = 0;
 return 1;
 out:
 head->read_bit = bit;
 head->read_avail = pos;
 return 0;
}
