
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cx25821_dev {int * _data_buf_virt_addr_ch2; int _data_buf_phys_addr_ch2; int _data_buf_size_ch2; int pci; int * _dma_virt_addr_ch2; int _dma_phys_addr_ch2; int _risc_size_ch2; scalar_t__ _is_running_ch2; } ;


 int cx25821_stop_upstream_video_ch2 (struct cx25821_dev*) ;
 int pci_free_consistent (int ,int ,int *,int ) ;

void cx25821_free_mem_upstream_ch2(struct cx25821_dev *dev)
{
 if (dev->_is_running_ch2) {
  cx25821_stop_upstream_video_ch2(dev);
 }

 if (dev->_dma_virt_addr_ch2) {
  pci_free_consistent(dev->pci, dev->_risc_size_ch2,
        dev->_dma_virt_addr_ch2,
        dev->_dma_phys_addr_ch2);
  dev->_dma_virt_addr_ch2 = ((void*)0);
 }

 if (dev->_data_buf_virt_addr_ch2) {
  pci_free_consistent(dev->pci, dev->_data_buf_size_ch2,
        dev->_data_buf_virt_addr_ch2,
        dev->_data_buf_phys_addr_ch2);
  dev->_data_buf_virt_addr_ch2 = ((void*)0);
 }
}
