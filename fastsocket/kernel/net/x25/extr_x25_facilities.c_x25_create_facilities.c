
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct x25_facilities {char pacsize_in; char pacsize_out; char winsize_in; char winsize_out; int throughput; int reverse; } ;
struct x25_dte_facilities {int calling_len; int called_len; int called_ae; int calling_ae; } ;


 int X25_DTE_SERVICES ;
 int X25_FAC_CALLED_AE ;
 int X25_FAC_CALLING_AE ;
 int X25_FAC_PACKET_SIZE ;
 int X25_FAC_REVERSE ;
 int X25_FAC_THROUGHPUT ;
 int X25_FAC_WINDOW_SIZE ;
 int X25_MARKER ;
 unsigned long X25_MASK_CALLED_AE ;
 unsigned long X25_MASK_CALLING_AE ;
 unsigned long X25_MASK_PACKET_SIZE ;
 unsigned long X25_MASK_REVERSE ;
 unsigned long X25_MASK_THROUGHPUT ;
 unsigned long X25_MASK_WINDOW_SIZE ;
 int memcpy (unsigned char*,int ,unsigned int) ;

int x25_create_facilities(unsigned char *buffer,
  struct x25_facilities *facilities,
  struct x25_dte_facilities *dte_facs, unsigned long facil_mask)
{
 unsigned char *p = buffer + 1;
 int len;

 if (!facil_mask) {




  buffer[0] = 0;
  len = 1;
  return len;
 }

 if (facilities->reverse && (facil_mask & X25_MASK_REVERSE)) {
  *p++ = X25_FAC_REVERSE;
  *p++ = facilities->reverse;
 }

 if (facilities->throughput && (facil_mask & X25_MASK_THROUGHPUT)) {
  *p++ = X25_FAC_THROUGHPUT;
  *p++ = facilities->throughput;
 }

 if ((facilities->pacsize_in || facilities->pacsize_out) &&
     (facil_mask & X25_MASK_PACKET_SIZE)) {
  *p++ = X25_FAC_PACKET_SIZE;
  *p++ = facilities->pacsize_in ? : facilities->pacsize_out;
  *p++ = facilities->pacsize_out ? : facilities->pacsize_in;
 }

 if ((facilities->winsize_in || facilities->winsize_out) &&
     (facil_mask & X25_MASK_WINDOW_SIZE)) {
  *p++ = X25_FAC_WINDOW_SIZE;
  *p++ = facilities->winsize_in ? : facilities->winsize_out;
  *p++ = facilities->winsize_out ? : facilities->winsize_in;
 }

 if (facil_mask & (X25_MASK_CALLING_AE|X25_MASK_CALLED_AE)) {
  *p++ = X25_MARKER;
  *p++ = X25_DTE_SERVICES;
 }

 if (dte_facs->calling_len && (facil_mask & X25_MASK_CALLING_AE)) {
  unsigned bytecount = (dte_facs->calling_len + 1) >> 1;
  *p++ = X25_FAC_CALLING_AE;
  *p++ = 1 + bytecount;
  *p++ = dte_facs->calling_len;
  memcpy(p, dte_facs->calling_ae, bytecount);
  p += bytecount;
 }

 if (dte_facs->called_len && (facil_mask & X25_MASK_CALLED_AE)) {
  unsigned bytecount = (dte_facs->called_len % 2) ?
  dte_facs->called_len / 2 + 1 :
  dte_facs->called_len / 2;
  *p++ = X25_FAC_CALLED_AE;
  *p++ = 1 + bytecount;
  *p++ = dte_facs->called_len;
  memcpy(p, dte_facs->called_ae, bytecount);
  p+=bytecount;
 }

 len = p - buffer;
 buffer[0] = len - 1;

 return len;
}
