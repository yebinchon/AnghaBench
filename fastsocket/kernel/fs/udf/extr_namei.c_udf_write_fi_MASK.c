#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  int uint16_t ;
struct udf_fileident_bh {int eoffset; int soffset; TYPE_2__* sbh; TYPE_2__* ebh; } ;
struct tag {int dummy; } ;
struct inode {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  tagChecksum; void* descCRCLength; void* descCRC; } ;
struct fileIdentDesc {int lengthFileIdent; TYPE_1__ descTag; scalar_t__ impUse; scalar_t__ padding; scalar_t__ fileIdent; int /*<<< orphan*/  lengthOfImpUse; } ;
struct TYPE_6__ {scalar_t__ i_alloc_type; } ;
struct TYPE_5__ {int* b_data; } ;

/* Variables and functions */
 scalar_t__ ICBTAG_FLAG_AD_IN_ICB ; 
 TYPE_3__* FUNC0 (struct inode*) ; 
 void* FUNC1 (int) ; 
 int FUNC2 (int,int*,int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 
 int /*<<< orphan*/  FUNC6 (int*,int*,int) ; 
 int /*<<< orphan*/  FUNC7 (int*,int,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 

int FUNC9(struct inode *inode, struct fileIdentDesc *cfi,
		 struct fileIdentDesc *sfi, struct udf_fileident_bh *fibh,
		 uint8_t *impuse, uint8_t *fileident)
{
	uint16_t crclen = fibh->eoffset - fibh->soffset - sizeof(struct tag);
	uint16_t crc;
	int offset;
	uint16_t liu = FUNC3(cfi->lengthOfImpUse);
	uint8_t lfi = cfi->lengthFileIdent;
	int padlen = fibh->eoffset - fibh->soffset - liu - lfi -
		sizeof(struct fileIdentDesc);
	int adinicb = 0;

	if (FUNC0(inode)->i_alloc_type == ICBTAG_FLAG_AD_IN_ICB)
		adinicb = 1;

	offset = fibh->soffset + sizeof(struct fileIdentDesc);

	if (impuse) {
		if (adinicb || (offset + liu < 0)) {
			FUNC6((uint8_t *)sfi->impUse, impuse, liu);
		} else if (offset >= 0) {
			FUNC6(fibh->ebh->b_data + offset, impuse, liu);
		} else {
			FUNC6((uint8_t *)sfi->impUse, impuse, -offset);
			FUNC6(fibh->ebh->b_data, impuse - offset,
				liu + offset);
		}
	}

	offset += liu;

	if (fileident) {
		if (adinicb || (offset + lfi < 0)) {
			FUNC6((uint8_t *)sfi->fileIdent + liu, fileident, lfi);
		} else if (offset >= 0) {
			FUNC6(fibh->ebh->b_data + offset, fileident, lfi);
		} else {
			FUNC6((uint8_t *)sfi->fileIdent + liu, fileident,
				-offset);
			FUNC6(fibh->ebh->b_data, fileident - offset,
				lfi + offset);
		}
	}

	offset += lfi;

	if (adinicb || (offset + padlen < 0)) {
		FUNC7((uint8_t *)sfi->padding + liu + lfi, 0x00, padlen);
	} else if (offset >= 0) {
		FUNC7(fibh->ebh->b_data + offset, 0x00, padlen);
	} else {
		FUNC7((uint8_t *)sfi->padding + liu + lfi, 0x00, -offset);
		FUNC7(fibh->ebh->b_data, 0x00, padlen + offset);
	}

	crc = FUNC2(0, (uint8_t *)cfi + sizeof(struct tag),
		      sizeof(struct fileIdentDesc) - sizeof(struct tag));

	if (fibh->sbh == fibh->ebh) {
		crc = FUNC2(crc, (uint8_t *)sfi->impUse,
			      crclen + sizeof(struct tag) -
			      sizeof(struct fileIdentDesc));
	} else if (sizeof(struct fileIdentDesc) >= -fibh->soffset) {
		crc = FUNC2(crc, fibh->ebh->b_data +
					sizeof(struct fileIdentDesc) +
					fibh->soffset,
			      crclen + sizeof(struct tag) -
					sizeof(struct fileIdentDesc));
	} else {
		crc = FUNC2(crc, (uint8_t *)sfi->impUse,
			      -fibh->soffset - sizeof(struct fileIdentDesc));
		crc = FUNC2(crc, fibh->ebh->b_data, fibh->eoffset);
	}

	cfi->descTag.descCRC = FUNC1(crc);
	cfi->descTag.descCRCLength = FUNC1(crclen);
	cfi->descTag.tagChecksum = FUNC8(&cfi->descTag);

	if (adinicb || (sizeof(struct fileIdentDesc) <= -fibh->soffset)) {
		FUNC6((uint8_t *)sfi, (uint8_t *)cfi,
			sizeof(struct fileIdentDesc));
	} else {
		FUNC6((uint8_t *)sfi, (uint8_t *)cfi, -fibh->soffset);
		FUNC6(fibh->ebh->b_data, (uint8_t *)cfi - fibh->soffset,
		       sizeof(struct fileIdentDesc) + fibh->soffset);
	}

	if (adinicb) {
		FUNC5(inode);
	} else {
		if (fibh->sbh != fibh->ebh)
			FUNC4(fibh->ebh, inode);
		FUNC4(fibh->sbh, inode);
	}
	return 0;
}