; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genautomata.c_output_dfa_start_func.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genautomata.c_output_dfa_start_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@output_file = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"void\0A%s (void)\0A{\0A  %s = get_max_uid ();\0A\00", align 1
@DFA_START_FUNC_NAME = common dso_local global i8* null, align 8
@DFA_INSN_CODES_LENGTH_VARIABLE_NAME = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [37 x i8] c"  %s = xmalloc (%s * sizeof (int));\0A\00", align 1
@DFA_INSN_CODES_VARIABLE_NAME = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [13 x i8] c"  %s ();\0A}\0A\0A\00", align 1
@DFA_CLEAN_INSN_CACHE_FUNC_NAME = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @output_dfa_start_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @output_dfa_start_func() #0 {
  %1 = load i32, i32* @output_file, align 4
  %2 = load i8*, i8** @DFA_START_FUNC_NAME, align 8
  %3 = load i8*, i8** @DFA_INSN_CODES_LENGTH_VARIABLE_NAME, align 8
  %4 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %1, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i8* %2, i8* %3)
  %5 = load i32, i32* @output_file, align 4
  %6 = load i8*, i8** @DFA_INSN_CODES_VARIABLE_NAME, align 8
  %7 = load i8*, i8** @DFA_INSN_CODES_LENGTH_VARIABLE_NAME, align 8
  %8 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %5, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i8* %6, i8* %7)
  %9 = load i32, i32* @output_file, align 4
  %10 = load i8*, i8** @DFA_CLEAN_INSN_CACHE_FUNC_NAME, align 8
  %11 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %9, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8* %10)
  ret void
}

declare dso_local i32 @fprintf(i32, i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
