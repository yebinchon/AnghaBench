
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct buffer {struct buffer* next; void* dma; int * buf; } ;
typedef void* dma_addr_t ;


 int DMESGE (char*) ;
 int GFP_KERNEL ;
 void* kmalloc (int,int ) ;

short buffer_add(struct buffer **buffer, u32 *buf, dma_addr_t dma,
  struct buffer **bufferhead)
{
        struct buffer *tmp;

 if(! *buffer){

  *buffer = kmalloc(sizeof(struct buffer),GFP_KERNEL);

  if (*buffer == ((void*)0)) {
   DMESGE("Failed to kmalloc head of TX/RX struct");
   return -1;
  }
  (*buffer)->next=*buffer;
  (*buffer)->buf=buf;
  (*buffer)->dma=dma;
  if(bufferhead !=((void*)0))
   (*bufferhead) = (*buffer);
  return 0;
 }
 tmp=*buffer;

 while(tmp->next!=(*buffer)) tmp=tmp->next;
 if ((tmp->next= kmalloc(sizeof(struct buffer),GFP_KERNEL)) == ((void*)0)){
  DMESGE("Failed to kmalloc TX/RX struct");
  return -1;
 }
 tmp->next->buf=buf;
 tmp->next->dma=dma;
 tmp->next->next=*buffer;

 return 0;
}
