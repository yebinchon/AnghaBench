
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct privhead {scalar_t__ ver_major; scalar_t__ ver_minor; scalar_t__ logical_disk_start; scalar_t__ logical_disk_size; scalar_t__ config_start; scalar_t__ config_size; int disk_id; } ;


 int BUG_ON (int) ;
 int GUID_SIZE ;
 int memcmp (int ,int ,int ) ;

__attribute__((used)) static bool ldm_compare_privheads (const struct privhead *ph1,
       const struct privhead *ph2)
{
 BUG_ON (!ph1 || !ph2);

 return ((ph1->ver_major == ph2->ver_major) &&
  (ph1->ver_minor == ph2->ver_minor) &&
  (ph1->logical_disk_start == ph2->logical_disk_start) &&
  (ph1->logical_disk_size == ph2->logical_disk_size) &&
  (ph1->config_start == ph2->config_start) &&
  (ph1->config_size == ph2->config_size) &&
  !memcmp (ph1->disk_id, ph2->disk_id, GUID_SIZE));
}
