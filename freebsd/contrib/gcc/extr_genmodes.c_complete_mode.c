
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mode_data {char* line; int cl; int precision; int bytesize; int ncomponents; unsigned int alignment; TYPE_1__* component; struct mode_data* next_cont; int name; int file; } ;
struct TYPE_2__ {int bytesize; unsigned int precision; struct mode_data* contained; } ;


 int MAX_MODE_CLASS ;
 int OPTIONAL ;
 int SET ;
 int UNSET ;
 int error (char*,int ,char*,...) ;
 int gcc_unreachable () ;
 int strcmp (int ,char*) ;
 int validate_mode (struct mode_data*,int ,int ,int ,int ,int ) ;
 struct mode_data* void_mode ;

__attribute__((used)) static void
complete_mode (struct mode_data *m)
{
  unsigned int alignment;

  if (!m->name)
    {
      error ("%s:%d: mode with no name", m->file, m->line);
      return;
    }
  if (m->cl == MAX_MODE_CLASS)
    {
      error ("%s:%d: %smode has no mode class", m->file, m->line, m->name);
      return;
    }

  switch (m->cl)
    {
    case 130:

      if (!strcmp (m->name, "VOID"))
 void_mode = m;

      validate_mode (m, UNSET, UNSET, UNSET, UNSET, UNSET);

      m->precision = 0;
      m->bytesize = 0;
      m->ncomponents = 0;
      m->component = 0;
      break;

    case 137:


      validate_mode (m, UNSET, UNSET, UNSET, UNSET, UNSET);

      m->bytesize = 4;
      m->ncomponents = 1;
      m->component = 0;
      break;

    case 132:
    case 133:
    case 134:



      validate_mode (m, OPTIONAL, SET, UNSET, UNSET,
       m->cl != 132 ? SET : UNSET);

      m->ncomponents = 1;
      m->component = 0;
      break;

    case 131:



      validate_mode (m, OPTIONAL, UNSET, SET, UNSET, UNSET);

      m->bytesize = m->component->bytesize;

      m->ncomponents = 1;
      m->component = 0;
      break;

    case 135:
    case 136:

      validate_mode (m, UNSET, UNSET, SET, UNSET, UNSET);
      m->ncomponents = 2;
      if (m->component->precision != (unsigned int)-1)
 m->precision = 2 * m->component->precision;
      m->bytesize = 2 * m->component->bytesize;
      break;

    case 128:
    case 129:

      validate_mode (m, UNSET, UNSET, SET, SET, UNSET);
      if (m->component->precision != (unsigned int)-1)
 m->precision = m->ncomponents * m->component->precision;
      m->bytesize = m->ncomponents * m->component->bytesize;
      break;

    default:
      gcc_unreachable ();
    }




  if (m->cl == 135 || m->cl == 136)
    alignment = m->component->bytesize;
  else
    alignment = m->bytesize;

  m->alignment = alignment & (~alignment + 1);



  if (m->component)
    {
      m->next_cont = m->component->contained;
      m->component->contained = m;
    }
}
