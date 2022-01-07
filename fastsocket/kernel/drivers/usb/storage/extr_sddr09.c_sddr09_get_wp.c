
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct us_data {int dummy; } ;
struct sddr09_card_info {int flags; } ;


 unsigned char LUNBITS ;
 int SDDR09_WP ;
 int US_DEBUGP (char*,...) ;
 int sddr09_read_status (struct us_data*,unsigned char*) ;

__attribute__((used)) static int
sddr09_get_wp(struct us_data *us, struct sddr09_card_info *info) {
 int result;
 unsigned char status;

 result = sddr09_read_status(us, &status);
 if (result) {
  US_DEBUGP("sddr09_get_wp: read_status fails\n");
  return result;
 }
 US_DEBUGP("sddr09_get_wp: status 0x%02X", status);
 if ((status & 0x80) == 0) {
  info->flags |= SDDR09_WP;
  US_DEBUGP(" WP");
 }
 if (status & 0x40)
  US_DEBUGP(" Ready");
 if (status & LUNBITS)
  US_DEBUGP(" Suspended");
 if (status & 0x1)
  US_DEBUGP(" Error");
 US_DEBUGP("\n");
 return 0;
}
