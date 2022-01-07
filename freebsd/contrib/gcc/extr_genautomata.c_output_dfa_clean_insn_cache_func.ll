; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genautomata.c_output_dfa_clean_insn_cache_func.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genautomata.c_output_dfa_clean_insn_cache_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@output_file = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"void\0A%s (void)\0A{\0A  int %s;\0A\0A\00", align 1
@DFA_CLEAN_INSN_CACHE_FUNC_NAME = common dso_local global i8* null, align 8
@I_VARIABLE_NAME = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [52 x i8] c"  for (%s = 0; %s < %s; %s++)\0A    %s [%s] = -1;\0A}\0A\0A\00", align 1
@DFA_INSN_CODES_LENGTH_VARIABLE_NAME = common dso_local global i8* null, align 8
@DFA_INSN_CODES_VARIABLE_NAME = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [31 x i8] c"void\0A%s (rtx %s)\0A{\0A  int %s;\0A\0A\00", align 1
@DFA_CLEAR_SINGLE_INSN_CACHE_FUNC_NAME = common dso_local global i8* null, align 8
@INSN_PARAMETER_NAME = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [59 x i8] c"  %s = INSN_UID (%s);\0A  if (%s < %s)\0A    %s [%s] = -1;\0A}\0A\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @output_dfa_clean_insn_cache_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @output_dfa_clean_insn_cache_func() #0 {
  %1 = load i32, i32* @output_file, align 4
  %2 = load i8*, i8** @DFA_CLEAN_INSN_CACHE_FUNC_NAME, align 8
  %3 = load i8*, i8** @I_VARIABLE_NAME, align 8
  %4 = call i32 (i32, i8*, i8*, i8*, ...) @fprintf(i32 %1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* %2, i8* %3)
  %5 = load i32, i32* @output_file, align 4
  %6 = load i8*, i8** @I_VARIABLE_NAME, align 8
  %7 = load i8*, i8** @I_VARIABLE_NAME, align 8
  %8 = load i8*, i8** @DFA_INSN_CODES_LENGTH_VARIABLE_NAME, align 8
  %9 = load i8*, i8** @I_VARIABLE_NAME, align 8
  %10 = load i8*, i8** @DFA_INSN_CODES_VARIABLE_NAME, align 8
  %11 = load i8*, i8** @I_VARIABLE_NAME, align 8
  %12 = call i32 (i32, i8*, i8*, i8*, ...) @fprintf(i32 %5, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i8* %6, i8* %7, i8* %8, i8* %9, i8* %10, i8* %11)
  %13 = load i32, i32* @output_file, align 4
  %14 = load i8*, i8** @DFA_CLEAR_SINGLE_INSN_CACHE_FUNC_NAME, align 8
  %15 = load i8*, i8** @INSN_PARAMETER_NAME, align 8
  %16 = load i8*, i8** @I_VARIABLE_NAME, align 8
  %17 = call i32 (i32, i8*, i8*, i8*, ...) @fprintf(i32 %13, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i8* %14, i8* %15, i8* %16)
  %18 = load i32, i32* @output_file, align 4
  %19 = load i8*, i8** @I_VARIABLE_NAME, align 8
  %20 = load i8*, i8** @INSN_PARAMETER_NAME, align 8
  %21 = load i8*, i8** @I_VARIABLE_NAME, align 8
  %22 = load i8*, i8** @DFA_INSN_CODES_LENGTH_VARIABLE_NAME, align 8
  %23 = load i8*, i8** @DFA_INSN_CODES_VARIABLE_NAME, align 8
  %24 = load i8*, i8** @I_VARIABLE_NAME, align 8
  %25 = call i32 (i32, i8*, i8*, i8*, ...) @fprintf(i32 %18, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.3, i64 0, i64 0), i8* %19, i8* %20, i8* %21, i8* %22, i8* %23, i8* %24)
  ret void
}

declare dso_local i32 @fprintf(i32, i8*, i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
