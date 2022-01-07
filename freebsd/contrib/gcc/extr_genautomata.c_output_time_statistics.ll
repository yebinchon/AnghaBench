; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genautomata.c_output_time_statistics.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genautomata.c_output_time_statistics.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [20 x i8] c"\0A  transformation: \00", align 1
@transform_time = common dso_local global i32 0, align 4
@ndfa_flag = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c", building DFA: \00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c", building NDFA: \00", align 1
@NDFA_time = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [16 x i8] c", NDFA -> DFA: \00", align 1
@NDFA_to_DFA_time = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [22 x i8] c"\0A  DFA minimization: \00", align 1
@minimize_time = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [28 x i8] c", making insn equivalence: \00", align 1
@equiv_time = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [29 x i8] c"\0A all automaton generation: \00", align 1
@automaton_generation_time = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [11 x i8] c", output: \00", align 1
@output_time = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @output_time_statistics to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @output_time_statistics(i32* %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i32*, i32** %2, align 8
  %4 = call i32 @fprintf(i32* %3, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %5 = load i32*, i32** %2, align 8
  %6 = load i32, i32* @transform_time, align 4
  %7 = call i32 @print_active_time(i32* %5, i32 %6)
  %8 = load i32*, i32** %2, align 8
  %9 = load i64, i64* @ndfa_flag, align 8
  %10 = icmp ne i64 %9, 0
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i64
  %13 = select i1 %11, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0)
  %14 = call i32 @fprintf(i32* %8, i8* %13)
  %15 = load i32*, i32** %2, align 8
  %16 = load i32, i32* @NDFA_time, align 4
  %17 = call i32 @print_active_time(i32* %15, i32 %16)
  %18 = load i64, i64* @ndfa_flag, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %1
  %21 = load i32*, i32** %2, align 8
  %22 = call i32 @fprintf(i32* %21, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  %23 = load i32*, i32** %2, align 8
  %24 = load i32, i32* @NDFA_to_DFA_time, align 4
  %25 = call i32 @print_active_time(i32* %23, i32 %24)
  br label %26

26:                                               ; preds = %20, %1
  %27 = load i32*, i32** %2, align 8
  %28 = call i32 @fprintf(i32* %27, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  %29 = load i32*, i32** %2, align 8
  %30 = load i32, i32* @minimize_time, align 4
  %31 = call i32 @print_active_time(i32* %29, i32 %30)
  %32 = load i32*, i32** %2, align 8
  %33 = call i32 @fprintf(i32* %32, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0))
  %34 = load i32*, i32** %2, align 8
  %35 = load i32, i32* @equiv_time, align 4
  %36 = call i32 @print_active_time(i32* %34, i32 %35)
  %37 = load i32*, i32** %2, align 8
  %38 = call i32 @fprintf(i32* %37, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0))
  %39 = load i32*, i32** %2, align 8
  %40 = load i32, i32* @automaton_generation_time, align 4
  %41 = call i32 @print_active_time(i32* %39, i32 %40)
  %42 = load i32*, i32** %2, align 8
  %43 = call i32 @fprintf(i32* %42, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0))
  %44 = load i32*, i32** %2, align 8
  %45 = load i32, i32* @output_time, align 4
  %46 = call i32 @print_active_time(i32* %44, i32 %45)
  %47 = load i32*, i32** %2, align 8
  %48 = call i32 @fprintf(i32* %47, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  ret void
}

declare dso_local i32 @fprintf(i32*, i8*) #1

declare dso_local i32 @print_active_time(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
