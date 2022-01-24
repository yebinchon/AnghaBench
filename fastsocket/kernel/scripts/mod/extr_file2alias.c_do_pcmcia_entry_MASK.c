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
struct pcmcia_device_id {int match_flags; int manf_id; int card_id; int func_id; int function; int device_no; int* prod_id_hash; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,int,int) ; 
 int PCMCIA_DEV_ID_MATCH_CARD_ID ; 
 int PCMCIA_DEV_ID_MATCH_DEVICE_NO ; 
 int PCMCIA_DEV_ID_MATCH_FUNCTION ; 
 int PCMCIA_DEV_ID_MATCH_FUNC_ID ; 
 int PCMCIA_DEV_ID_MATCH_MANF_ID ; 
 int PCMCIA_DEV_ID_MATCH_PROD_ID1 ; 
 int PCMCIA_DEV_ID_MATCH_PROD_ID2 ; 
 int PCMCIA_DEV_ID_MATCH_PROD_ID3 ; 
 int PCMCIA_DEV_ID_MATCH_PROD_ID4 ; 
 void* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 

__attribute__((used)) static int FUNC4(const char *filename,
			   struct pcmcia_device_id *id, char *alias)
{
	unsigned int i;

	id->match_flags = FUNC1(id->match_flags);
	id->manf_id = FUNC1(id->manf_id);
	id->card_id = FUNC1(id->card_id);
	id->func_id = FUNC1(id->func_id);
	id->function = FUNC1(id->function);
	id->device_no = FUNC1(id->device_no);

	for (i=0; i<4; i++) {
		id->prod_id_hash[i] = FUNC1(id->prod_id_hash[i]);
       }

       FUNC3(alias, "pcmcia:");
       FUNC0(alias, "m", id->match_flags & PCMCIA_DEV_ID_MATCH_MANF_ID,
	   id->manf_id);
       FUNC0(alias, "c", id->match_flags & PCMCIA_DEV_ID_MATCH_CARD_ID,
	   id->card_id);
       FUNC0(alias, "f", id->match_flags & PCMCIA_DEV_ID_MATCH_FUNC_ID,
	   id->func_id);
       FUNC0(alias, "fn", id->match_flags & PCMCIA_DEV_ID_MATCH_FUNCTION,
	   id->function);
       FUNC0(alias, "pfn", id->match_flags & PCMCIA_DEV_ID_MATCH_DEVICE_NO,
	   id->device_no);
       FUNC0(alias, "pa", id->match_flags & PCMCIA_DEV_ID_MATCH_PROD_ID1, id->prod_id_hash[0]);
       FUNC0(alias, "pb", id->match_flags & PCMCIA_DEV_ID_MATCH_PROD_ID2, id->prod_id_hash[1]);
       FUNC0(alias, "pc", id->match_flags & PCMCIA_DEV_ID_MATCH_PROD_ID3, id->prod_id_hash[2]);
       FUNC0(alias, "pd", id->match_flags & PCMCIA_DEV_ID_MATCH_PROD_ID4, id->prod_id_hash[3]);

	FUNC2(alias);
       return 1;
}