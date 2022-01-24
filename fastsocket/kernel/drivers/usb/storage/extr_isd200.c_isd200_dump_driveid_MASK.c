#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int u16 ;

/* Variables and functions */
 size_t ATA_ID_BUF_SIZE ; 
 size_t ATA_ID_CAPABILITY ; 
 size_t ATA_ID_COMMAND_SET_1 ; 
 size_t ATA_ID_COMMAND_SET_2 ; 
 size_t ATA_ID_CONFIG ; 
 size_t ATA_ID_CUR_CYLS ; 
 size_t ATA_ID_CUR_HEADS ; 
 size_t ATA_ID_CUR_SECTORS ; 
 size_t ATA_ID_CYLS ; 
 size_t ATA_ID_DWORD_IO ; 
 size_t ATA_ID_FIELD_VALID ; 
 size_t ATA_ID_FW_REV ; 
 size_t ATA_ID_HEADS ; 
 int ATA_ID_LBA_CAPACITY ; 
 size_t ATA_ID_MAX_MULTSECT ; 
 size_t ATA_ID_MULTSECT ; 
 size_t ATA_ID_OLD_DMA_MODES ; 
 size_t ATA_ID_OLD_PIO_MODES ; 
 size_t ATA_ID_PROD ; 
 size_t ATA_ID_SECTORS ; 
 size_t ATA_ID_SERNO ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int FUNC1 (int*,int) ; 

__attribute__((used)) static void FUNC2(u16 *id)
{
	FUNC0("   Identify Data Structure:\n");
	FUNC0("      config = 0x%x\n",	  id[ATA_ID_CONFIG]);
	FUNC0("      cyls = 0x%x\n",	  id[ATA_ID_CYLS]);
	FUNC0("      heads = 0x%x\n",	  id[ATA_ID_HEADS]);
	FUNC0("      track_bytes = 0x%x\n",	  id[4]);
	FUNC0("      sector_bytes = 0x%x\n",  id[5]);
	FUNC0("      sectors = 0x%x\n",	  id[ATA_ID_SECTORS]);
	FUNC0("      serial_no[0] = 0x%x\n",  *(char *)&id[ATA_ID_SERNO]);
	FUNC0("      buf_type = 0x%x\n",	  id[20]);
	FUNC0("      buf_size = 0x%x\n",	  id[ATA_ID_BUF_SIZE]);
	FUNC0("      ecc_bytes = 0x%x\n",	  id[22]);
	FUNC0("      fw_rev[0] = 0x%x\n",	  *(char *)&id[ATA_ID_FW_REV]);
	FUNC0("      model[0] = 0x%x\n",	  *(char *)&id[ATA_ID_PROD]);
	FUNC0("      max_multsect = 0x%x\n",  id[ATA_ID_MAX_MULTSECT] & 0xff);
	FUNC0("      dword_io = 0x%x\n",	  id[ATA_ID_DWORD_IO]);
	FUNC0("      capability = 0x%x\n",	  id[ATA_ID_CAPABILITY] >> 8);
	FUNC0("      tPIO = 0x%x\n",	  id[ATA_ID_OLD_PIO_MODES] >> 8);
	FUNC0("      tDMA = 0x%x\n",	  id[ATA_ID_OLD_DMA_MODES] >> 8);
	FUNC0("      field_valid = 0x%x\n",	  id[ATA_ID_FIELD_VALID]);
	FUNC0("      cur_cyls = 0x%x\n",	  id[ATA_ID_CUR_CYLS]);
	FUNC0("      cur_heads = 0x%x\n",	  id[ATA_ID_CUR_HEADS]);
	FUNC0("      cur_sectors = 0x%x\n",	  id[ATA_ID_CUR_SECTORS]);
	FUNC0("      cur_capacity = 0x%x\n",  FUNC1(id, 57));
	FUNC0("      multsect = 0x%x\n",	  id[ATA_ID_MULTSECT] & 0xff);
	FUNC0("      lba_capacity = 0x%x\n",  FUNC1(id, ATA_ID_LBA_CAPACITY));
	FUNC0("      command_set_1 = 0x%x\n", id[ATA_ID_COMMAND_SET_1]);
	FUNC0("      command_set_2 = 0x%x\n", id[ATA_ID_COMMAND_SET_2]);
}