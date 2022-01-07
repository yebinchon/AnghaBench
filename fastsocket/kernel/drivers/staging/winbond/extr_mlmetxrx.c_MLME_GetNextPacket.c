
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int DataType; scalar_t__ len; int pMMPDU; } ;
struct wbsoft_priv {TYPE_1__ sMlmeFrame; } ;
struct wb35_descriptor {size_t InternalUsed; size_t buffer_start_index; size_t buffer_number; int Type; int buffer_total_size; scalar_t__* buffer_size; int * buffer_address; } ;


 size_t MAX_DESCRIPTOR_BUFFER_INDEX ;

void MLME_GetNextPacket(struct wbsoft_priv *adapter, struct wb35_descriptor *desc)
{
 desc->InternalUsed = desc->buffer_start_index + desc->buffer_number;
 desc->InternalUsed %= MAX_DESCRIPTOR_BUFFER_INDEX;
 desc->buffer_address[desc->InternalUsed] = adapter->sMlmeFrame.pMMPDU;
 desc->buffer_size[desc->InternalUsed] = adapter->sMlmeFrame.len;
 desc->buffer_total_size += adapter->sMlmeFrame.len;
 desc->buffer_number++;
 desc->Type = adapter->sMlmeFrame.DataType;
}
