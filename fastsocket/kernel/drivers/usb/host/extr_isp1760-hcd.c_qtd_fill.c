
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct isp1760_qtd {int length; int toggle; int packet_type; void* data_buffer; } ;


 int GET_DATA_TOGGLE (int ) ;
 int GET_QTD_TOKEN_TYPE (int ) ;
 size_t HC_ATL_PL_SIZE ;

__attribute__((used)) static int qtd_fill(struct isp1760_qtd *qtd, void *databuffer, size_t len,
  u32 token)
{
 int count;

 qtd->data_buffer = databuffer;
 qtd->packet_type = GET_QTD_TOKEN_TYPE(token);
 qtd->toggle = GET_DATA_TOGGLE(token);

 if (len > HC_ATL_PL_SIZE)
  count = HC_ATL_PL_SIZE;
 else
  count = len;

 qtd->length = count;
 return count;
}
