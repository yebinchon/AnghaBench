; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genautomata.c_output_internal_trans_func.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genautomata.c_output_internal_trans_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@output_file = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"static int\0A%s (int %s, struct %s *%s ATTRIBUTE_UNUSED)\0A\00", align 1
@INTERNAL_TRANSITION_FUNC_NAME = common dso_local global i8* null, align 8
@INTERNAL_INSN_CODE_NAME = common dso_local global i8* null, align 8
@CHIP_NAME = common dso_local global i8* null, align 8
@CHIP_PARAMETER_NAME = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"{\0A  int %s ATTRIBUTE_UNUSED;\0A\00", align 1
@TEMPORARY_VARIABLE_NAME = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [22 x i8] c"\0A  switch (%s)\0A    {\0A\00", align 1
@output_automata_list_transition_code = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [38 x i8] c"\0A    default:\0A      return -1;\0A    }\0A\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"}\0A\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @output_internal_trans_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @output_internal_trans_func() #0 {
  %1 = load i32, i32* @output_file, align 4
  %2 = load i8*, i8** @INTERNAL_TRANSITION_FUNC_NAME, align 8
  %3 = load i8*, i8** @INTERNAL_INSN_CODE_NAME, align 8
  %4 = load i8*, i8** @CHIP_NAME, align 8
  %5 = load i8*, i8** @CHIP_PARAMETER_NAME, align 8
  %6 = call i32 (i32, i8*, ...) @fprintf(i32 %1, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i8* %2, i8* %3, i8* %4, i8* %5)
  %7 = load i32, i32* @output_file, align 4
  %8 = load i8*, i8** @TEMPORARY_VARIABLE_NAME, align 8
  %9 = call i32 (i32, i8*, ...) @fprintf(i32 %7, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i8* %8)
  %10 = load i32, i32* @output_file, align 4
  %11 = load i8*, i8** @INTERNAL_INSN_CODE_NAME, align 8
  %12 = call i32 (i32, i8*, ...) @fprintf(i32 %10, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i8* %11)
  %13 = load i32, i32* @output_automata_list_transition_code, align 4
  %14 = call i32 @output_insn_code_cases(i32 %13)
  %15 = load i32, i32* @output_file, align 4
  %16 = call i32 (i32, i8*, ...) @fprintf(i32 %15, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  %17 = load i32, i32* @output_file, align 4
  %18 = call i32 (i32, i8*, ...) @fprintf(i32 %17, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  ret void
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @output_insn_code_cases(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
