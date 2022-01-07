; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genextract.c_print_header.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genextract.c_print_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [418 x i8] c"/* Generated automatically by the program `genextract'\0A   from the machine description file `md'.  */\0A\0A#include \22config.h\22\0A#include \22system.h\22\0A#include \22coretypes.h\22\0A#include \22tm.h\22\0A#include \22rtl.h\22\0A#include \22insn-config.h\22\0A#include \22recog.h\22\0A#include \22toplev.h\22\0A\0A/* This variable is used as the \22location\22 of any missing operand\0A   whose numbers are skipped by a given pattern.  */\0Astatic rtx junk ATTRIBUTE_UNUSED;\0A\00", align 1
@.str.1 = private unnamed_addr constant [335 x i8] c"void\0Ainsn_extract (rtx insn)\0A{\0A  rtx *ro = recog_data.operand;\0A  rtx **ro_loc = recog_data.operand_loc;\0A  rtx pat = PATTERN (insn);\0A  int i ATTRIBUTE_UNUSED; /* only for peepholes */\0A\0A#ifdef ENABLE_CHECKING\0A  memset (ro, 0xab, sizeof (*ro) * MAX_RECOG_OPERANDS);\0A  memset (ro_loc, 0xab, sizeof (*ro_loc) * MAX_RECOG_OPERANDS);\0A#endif\0A\00", align 1
@.str.2 = private unnamed_addr constant [440 x i8] c"  switch (INSN_CODE (insn))\0A    {\0A    default:\0A      /* Control reaches here if insn_extract has been called with an\0A         unrecognizable insn (code -1), or an insn whose INSN_CODE\0A         corresponds to a DEFINE_EXPAND in the machine description;\0A         either way, a bug.  */\0A      if (INSN_CODE (insn) < 0)\0A        fatal_insn (\22unrecognizable insn:\22, insn);\0A      else\0A        fatal_insn (\22insn with invalid code number:\22, insn);\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @print_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_header() #0 {
  %1 = call i32 @puts(i8* getelementptr inbounds ([418 x i8], [418 x i8]* @.str, i64 0, i64 0))
  %2 = call i32 @puts(i8* getelementptr inbounds ([335 x i8], [335 x i8]* @.str.1, i64 0, i64 0))
  %3 = call i32 @puts(i8* getelementptr inbounds ([440 x i8], [440 x i8]* @.str.2, i64 0, i64 0))
  ret void
}

declare dso_local i32 @puts(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
