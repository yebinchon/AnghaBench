
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cx25821_dev {int * _audiodata_buf_virt_addr; int _audiodata_buf_phys_addr; int _audiodata_buf_size; int pci; int * _risc_virt_addr; int _risc_phys_addr; int _audiorisc_size; } ;


 int pci_free_consistent (int ,int ,int *,int ) ;

void cx25821_free_memory_audio(struct cx25821_dev *dev)
{
 if (dev->_risc_virt_addr) {
  pci_free_consistent(dev->pci, dev->_audiorisc_size,
        dev->_risc_virt_addr, dev->_risc_phys_addr);
  dev->_risc_virt_addr = ((void*)0);
 }

 if (dev->_audiodata_buf_virt_addr) {
  pci_free_consistent(dev->pci, dev->_audiodata_buf_size,
        dev->_audiodata_buf_virt_addr,
        dev->_audiodata_buf_phys_addr);
  dev->_audiodata_buf_virt_addr = ((void*)0);
 }
}
