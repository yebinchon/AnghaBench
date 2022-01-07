
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wlp_uuid {int data; } ;


 int memcmp (struct wlp_uuid*,struct wlp_uuid*,int) ;

__attribute__((used)) static inline
int wlp_uuid_is_set(struct wlp_uuid *uuid)
{
 struct wlp_uuid zero_uuid = { .data = { 0x00, 0x00, 0x00, 0x00,
      0x00, 0x00, 0x00, 0x00,
      0x00, 0x00, 0x00, 0x00,
      0x00, 0x00, 0x00, 0x00} };

 if (!memcmp(uuid, &zero_uuid, sizeof(*uuid)))
  return 0;
 return 1;
}
