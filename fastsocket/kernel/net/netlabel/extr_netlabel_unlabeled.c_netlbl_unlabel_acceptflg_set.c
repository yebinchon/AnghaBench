
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct netlbl_audit {int dummy; } ;
struct audit_buffer {int dummy; } ;


 int AUDIT_MAC_UNLBL_ALLOW ;
 int audit_log_end (struct audit_buffer*) ;
 int audit_log_format (struct audit_buffer*,char*,int ,int ) ;
 int netlabel_unlabel_acceptflg ;
 struct audit_buffer* netlbl_audit_start_common (int ,struct netlbl_audit*) ;

__attribute__((used)) static void netlbl_unlabel_acceptflg_set(u8 value,
      struct netlbl_audit *audit_info)
{
 struct audit_buffer *audit_buf;
 u8 old_val;

 old_val = netlabel_unlabel_acceptflg;
 netlabel_unlabel_acceptflg = value;
 audit_buf = netlbl_audit_start_common(AUDIT_MAC_UNLBL_ALLOW,
           audit_info);
 if (audit_buf != ((void*)0)) {
  audit_log_format(audit_buf,
     " unlbl_accept=%u old=%u", value, old_val);
  audit_log_end(audit_buf);
 }
}
