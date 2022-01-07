
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXIT_FAILURE ;
 int exit (int ) ;
 int fprintf (int ,char*) ;
 int stderr ;

__attribute__((used)) static void user_education(void)
{
 fprintf(stderr, "Usage:\n");
 fprintf(stderr, "\teeprom_fix FW-FILE SWITCH [ADDRESS [VALUE MASK]]\n");

 fprintf(stderr, "\nDescription:\n");
 fprintf(stderr, "\tThis utility manage a set of overrides which "
   "commands the driver\n\tto load customized EEPROM' "
   "data for all specified addresses.\n");

 fprintf(stderr, "\nParameters:\n");
 fprintf(stderr, "\t'FW-FILE'  = firmware file [basename]\n");
 fprintf(stderr, "\t'SWITCH'   = [=|d|D]\n");
 fprintf(stderr, "\t | '='       => add/set value for address\n");
 fprintf(stderr, "\t | 'D'       => removes all EEPROM overrides\n");
 fprintf(stderr, "\t * 'd'       => removed override for 'address'\n");
 fprintf(stderr, "\n\t'ADDRESS'  = location of the EEPROM override\n");
 fprintf(stderr, "\t\t     NB: must be a multiple of 4.\n");
 fprintf(stderr, "\t\t     an address map can be found in eeprom.h.\n");
 fprintf(stderr, "\n\t'VALUE'    = replacement value\n");
 fprintf(stderr, "\t'MASK'     = mask for the value placement.\n\n");

 exit(EXIT_FAILURE);
}
