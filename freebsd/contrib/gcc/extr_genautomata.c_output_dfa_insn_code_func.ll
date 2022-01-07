; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genautomata.c_output_dfa_insn_code_func.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genautomata.c_output_dfa_insn_code_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@output_file = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [175 x i8] c"static void\0Adfa_insn_code_enlarge (int uid)\0A{\0A  int i = %s;\0A  %s = 2 * uid;\0A  %s = xrealloc (%s,\0A                 %s * sizeof(int));\0A  for (; i < %s; i++)\0A    %s[i] = -1;\0A}\0A\0A\00", align 1
@DFA_INSN_CODES_LENGTH_VARIABLE_NAME = common dso_local global i8* null, align 8
@DFA_INSN_CODES_VARIABLE_NAME = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [71 x i8] c"static inline int\0A%s (rtx %s)\0A{\0A  int uid = INSN_UID (%s);\0A  int %s;\0A\0A\00", align 1
@DFA_INSN_CODE_FUNC_NAME = common dso_local global i8* null, align 8
@INSN_PARAMETER_NAME = common dso_local global i8* null, align 8
@INTERNAL_INSN_CODE_NAME = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [52 x i8] c"  if (uid >= %s)\0A    dfa_insn_code_enlarge (uid);\0A\0A\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"  %s = %s[uid];\0A\00", align 1
@.str.4 = private unnamed_addr constant [67 x i8] c"  if (%s < 0)\0A    {\0A      %s = %s (%s);\0A      %s[uid] = %s;\0A    }\0A\00", align 1
@INTERNAL_DFA_INSN_CODE_FUNC_NAME = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [17 x i8] c"  return %s;\0A}\0A\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @output_dfa_insn_code_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @output_dfa_insn_code_func() #0 {
  %1 = load i32, i32* @output_file, align 4
  %2 = load i8*, i8** @DFA_INSN_CODES_LENGTH_VARIABLE_NAME, align 8
  %3 = load i8*, i8** @DFA_INSN_CODES_LENGTH_VARIABLE_NAME, align 8
  %4 = load i8*, i8** @DFA_INSN_CODES_VARIABLE_NAME, align 8
  %5 = load i8*, i8** @DFA_INSN_CODES_VARIABLE_NAME, align 8
  %6 = load i8*, i8** @DFA_INSN_CODES_LENGTH_VARIABLE_NAME, align 8
  %7 = load i8*, i8** @DFA_INSN_CODES_LENGTH_VARIABLE_NAME, align 8
  %8 = load i8*, i8** @DFA_INSN_CODES_VARIABLE_NAME, align 8
  %9 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %1, i8* getelementptr inbounds ([175 x i8], [175 x i8]* @.str, i64 0, i64 0), i8* %2, i8* %3, i8* %4, i8* %5, i8* %6, i8* %7, i8* %8)
  %10 = load i32, i32* @output_file, align 4
  %11 = load i8*, i8** @DFA_INSN_CODE_FUNC_NAME, align 8
  %12 = load i8*, i8** @INSN_PARAMETER_NAME, align 8
  %13 = load i8*, i8** @INSN_PARAMETER_NAME, align 8
  %14 = load i8*, i8** @INTERNAL_INSN_CODE_NAME, align 8
  %15 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %10, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.1, i64 0, i64 0), i8* %11, i8* %12, i8* %13, i8* %14)
  %16 = load i32, i32* @output_file, align 4
  %17 = load i8*, i8** @DFA_INSN_CODES_LENGTH_VARIABLE_NAME, align 8
  %18 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %16, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0), i8* %17)
  %19 = load i32, i32* @output_file, align 4
  %20 = load i8*, i8** @INTERNAL_INSN_CODE_NAME, align 8
  %21 = load i8*, i8** @DFA_INSN_CODES_VARIABLE_NAME, align 8
  %22 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %19, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i8* %20, i8* %21)
  %23 = load i32, i32* @output_file, align 4
  %24 = load i8*, i8** @INTERNAL_INSN_CODE_NAME, align 8
  %25 = load i8*, i8** @INTERNAL_INSN_CODE_NAME, align 8
  %26 = load i8*, i8** @INTERNAL_DFA_INSN_CODE_FUNC_NAME, align 8
  %27 = load i8*, i8** @INSN_PARAMETER_NAME, align 8
  %28 = load i8*, i8** @DFA_INSN_CODES_VARIABLE_NAME, align 8
  %29 = load i8*, i8** @INTERNAL_INSN_CODE_NAME, align 8
  %30 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %23, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.4, i64 0, i64 0), i8* %24, i8* %25, i8* %26, i8* %27, i8* %28, i8* %29)
  %31 = load i32, i32* @output_file, align 4
  %32 = load i8*, i8** @INTERNAL_INSN_CODE_NAME, align 8
  %33 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %31, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i8* %32)
  ret void
}

declare dso_local i32 @fprintf(i32, i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
