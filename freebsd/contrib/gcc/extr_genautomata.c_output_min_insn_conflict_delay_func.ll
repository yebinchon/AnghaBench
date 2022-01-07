; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genautomata.c_output_min_insn_conflict_delay_func.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genautomata.c_output_min_insn_conflict_delay_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@output_file = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"int\0A%s (%s %s, rtx %s, rtx %s)\0A\00", align 1
@MIN_INSN_CONFLICT_DELAY_FUNC_NAME = common dso_local global i8* null, align 8
@STATE_TYPE_NAME = common dso_local global i8* null, align 8
@STATE_NAME = common dso_local global i8* null, align 8
@INSN_PARAMETER_NAME = common dso_local global i8* null, align 8
@INSN2_PARAMETER_NAME = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [45 x i8] c"{\0A  struct %s %s;\0A  int %s, %s, transition;\0A\00", align 1
@CHIP_NAME = common dso_local global i8* null, align 8
@INTERNAL_INSN_CODE_NAME = common dso_local global i8* null, align 8
@INTERNAL_INSN2_CODE_NAME = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [34 x i8] c"  memcpy (&%s, %s, sizeof (%s));\0A\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"  %s (&%s);\0A\00", align 1
@INTERNAL_RESET_FUNC_NAME = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [30 x i8] c"  transition = %s (%s, &%s);\0A\00", align 1
@INTERNAL_TRANSITION_FUNC_NAME = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [33 x i8] c"  gcc_assert (transition <= 0);\0A\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"  return %s (%s, &%s);\0A\00", align 1
@INTERNAL_MIN_ISSUE_DELAY_FUNC_NAME = common dso_local global i8* null, align 8
@.str.7 = private unnamed_addr constant [4 x i8] c"}\0A\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @output_min_insn_conflict_delay_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @output_min_insn_conflict_delay_func() #0 {
  %1 = load i32, i32* @output_file, align 4
  %2 = load i8*, i8** @MIN_INSN_CONFLICT_DELAY_FUNC_NAME, align 8
  %3 = load i8*, i8** @STATE_TYPE_NAME, align 8
  %4 = load i8*, i8** @STATE_NAME, align 8
  %5 = load i8*, i8** @INSN_PARAMETER_NAME, align 8
  %6 = load i8*, i8** @INSN2_PARAMETER_NAME, align 8
  %7 = call i32 (i32, i8*, ...) @fprintf(i32 %1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i8* %2, i8* %3, i8* %4, i8* %5, i8* %6)
  %8 = load i32, i32* @output_file, align 4
  %9 = load i8*, i8** @CHIP_NAME, align 8
  %10 = load i8*, i8** @CHIP_NAME, align 8
  %11 = load i8*, i8** @INTERNAL_INSN_CODE_NAME, align 8
  %12 = load i8*, i8** @INTERNAL_INSN2_CODE_NAME, align 8
  %13 = call i32 (i32, i8*, ...) @fprintf(i32 %8, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i8* %9, i8* %10, i8* %11, i8* %12)
  %14 = load i8*, i8** @INSN_PARAMETER_NAME, align 8
  %15 = load i8*, i8** @INTERNAL_INSN_CODE_NAME, align 8
  %16 = call i32 @output_internal_insn_code_evaluation(i8* %14, i8* %15, i32 0)
  %17 = load i8*, i8** @INSN2_PARAMETER_NAME, align 8
  %18 = load i8*, i8** @INTERNAL_INSN2_CODE_NAME, align 8
  %19 = call i32 @output_internal_insn_code_evaluation(i8* %17, i8* %18, i32 0)
  %20 = load i32, i32* @output_file, align 4
  %21 = load i8*, i8** @CHIP_NAME, align 8
  %22 = load i8*, i8** @STATE_NAME, align 8
  %23 = load i8*, i8** @CHIP_NAME, align 8
  %24 = call i32 (i32, i8*, ...) @fprintf(i32 %20, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i8* %21, i8* %22, i8* %23)
  %25 = load i32, i32* @output_file, align 4
  %26 = load i8*, i8** @INTERNAL_RESET_FUNC_NAME, align 8
  %27 = load i8*, i8** @CHIP_NAME, align 8
  %28 = call i32 (i32, i8*, ...) @fprintf(i32 %25, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i8* %26, i8* %27)
  %29 = load i32, i32* @output_file, align 4
  %30 = load i8*, i8** @INTERNAL_TRANSITION_FUNC_NAME, align 8
  %31 = load i8*, i8** @INTERNAL_INSN_CODE_NAME, align 8
  %32 = load i8*, i8** @CHIP_NAME, align 8
  %33 = call i32 (i32, i8*, ...) @fprintf(i32 %29, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i8* %30, i8* %31, i8* %32)
  %34 = load i32, i32* @output_file, align 4
  %35 = call i32 (i32, i8*, ...) @fprintf(i32 %34, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0))
  %36 = load i32, i32* @output_file, align 4
  %37 = load i8*, i8** @INTERNAL_MIN_ISSUE_DELAY_FUNC_NAME, align 8
  %38 = load i8*, i8** @INTERNAL_INSN2_CODE_NAME, align 8
  %39 = load i8*, i8** @CHIP_NAME, align 8
  %40 = call i32 (i32, i8*, ...) @fprintf(i32 %36, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0), i8* %37, i8* %38, i8* %39)
  %41 = load i32, i32* @output_file, align 4
  %42 = call i32 (i32, i8*, ...) @fprintf(i32 %41, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  ret void
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @output_internal_insn_code_evaluation(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
