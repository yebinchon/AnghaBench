
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cx25821_dev {int * _data_buf_virt_addr; int _data_buf_phys_addr; int _data_buf_size; int pci; int * _dma_virt_addr; int _dma_phys_addr; int _risc_size; scalar_t__ _is_running; } ;


 int cx25821_stop_upstream_video_ch1 (struct cx25821_dev*) ;
 int pci_free_consistent (int ,int ,int *,int ) ;

void cx25821_free_mem_upstream_ch1(struct cx25821_dev *dev)
{
 if (dev->_is_running) {
  cx25821_stop_upstream_video_ch1(dev);
 }

 if (dev->_dma_virt_addr) {
  pci_free_consistent(dev->pci, dev->_risc_size,
        dev->_dma_virt_addr, dev->_dma_phys_addr);
  dev->_dma_virt_addr = ((void*)0);
 }

 if (dev->_data_buf_virt_addr) {
  pci_free_consistent(dev->pci, dev->_data_buf_size,
        dev->_data_buf_virt_addr,
        dev->_data_buf_phys_addr);
  dev->_data_buf_virt_addr = ((void*)0);
 }
}
