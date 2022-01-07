
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct privhead {int ver_major; int ver_minor; scalar_t__ logical_disk_start; scalar_t__ logical_disk_size; scalar_t__ config_start; scalar_t__ config_size; int disk_id; } ;


 int BUG_ON (int) ;
 scalar_t__ LDM_DB_SIZE ;
 scalar_t__ MAGIC_PRIVHEAD ;
 void* get_unaligned_be16 (int const*) ;
 scalar_t__ get_unaligned_be64 (int const*) ;
 int ldm_debug (char*,...) ;
 int ldm_error (char*,...) ;
 int ldm_info (char*,scalar_t__,unsigned long long) ;
 int ldm_parse_guid (int const*,int ) ;

__attribute__((used)) static bool ldm_parse_privhead(const u8 *data, struct privhead *ph)
{
 bool is_vista = 0;

 BUG_ON(!data || !ph);
 if (MAGIC_PRIVHEAD != get_unaligned_be64(data)) {
  ldm_error("Cannot find PRIVHEAD structure. LDM database is"
   " corrupt. Aborting.");
  return 0;
 }
 ph->ver_major = get_unaligned_be16(data + 0x000C);
 ph->ver_minor = get_unaligned_be16(data + 0x000E);
 ph->logical_disk_start = get_unaligned_be64(data + 0x011B);
 ph->logical_disk_size = get_unaligned_be64(data + 0x0123);
 ph->config_start = get_unaligned_be64(data + 0x012B);
 ph->config_size = get_unaligned_be64(data + 0x0133);

 if (ph->ver_major == 2 && ph->ver_minor == 12)
  is_vista = 1;
 if (!is_vista && (ph->ver_major != 2 || ph->ver_minor != 11)) {
  ldm_error("Expected PRIVHEAD version 2.11 or 2.12, got %d.%d."
   " Aborting.", ph->ver_major, ph->ver_minor);
  return 0;
 }
 ldm_debug("PRIVHEAD version %d.%d (Windows %s).", ph->ver_major,
   ph->ver_minor, is_vista ? "Vista" : "2000/XP");
 if (ph->config_size != LDM_DB_SIZE) {

  ldm_info("Database is normally %u bytes, it claims to "
   "be %llu bytes.", LDM_DB_SIZE,
   (unsigned long long)ph->config_size);
 }
 if ((ph->logical_disk_size == 0) || (ph->logical_disk_start +
   ph->logical_disk_size > ph->config_start)) {
  ldm_error("PRIVHEAD disk size doesn't match real disk size");
  return 0;
 }
 if (!ldm_parse_guid(data + 0x0030, ph->disk_id)) {
  ldm_error("PRIVHEAD contains an invalid GUID.");
  return 0;
 }
 ldm_debug("Parsed PRIVHEAD successfully.");
 return 1;
}
