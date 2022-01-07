; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_infcmd.c_program_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_infcmd.c_program_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stop_bpstat = common dso_local global i32 0, align 4
@target_has_execution = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"The program being debugged is not being run.\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"Program stopped at %s.\0A\00", align 1
@stop_pc = common dso_local global i64 0, align 8
@stop_step = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [33 x i8] c"It stopped after being stepped.\0A\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"It stopped at a breakpoint that has \00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"since been deleted.\0A\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"It stopped at breakpoint %d.\0A\00", align 1
@stop_signal = common dso_local global i64 0, align 8
@TARGET_SIGNAL_0 = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [32 x i8] c"It stopped with signal %s, %s.\0A\00", align 1
@.str.7 = private unnamed_addr constant [39 x i8] c"Type \22info stack\22 or \22info registers\22 \00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"for more information.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @program_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @program_info(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* @stop_bpstat, align 4
  store i32 %7, i32* %5, align 4
  %8 = call i32 @bpstat_num(i32* %5)
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* @target_has_execution, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %2
  %12 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  br label %59

13:                                               ; preds = %2
  %14 = call i32 (...) @target_files_info()
  %15 = load i64, i64* @stop_pc, align 8
  %16 = call i32 @local_hex_string(i64 %15)
  %17 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %16)
  %18 = load i64, i64* @stop_step, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %13
  %21 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  br label %53

22:                                               ; preds = %13
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %41

25:                                               ; preds = %22
  br label %26

26:                                               ; preds = %38, %25
  %27 = load i32, i32* %6, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %40

29:                                               ; preds = %26
  %30 = load i32, i32* %6, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %29
  %33 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  %34 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  br label %38

35:                                               ; preds = %29
  %36 = load i32, i32* %6, align 4
  %37 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i32 %36)
  br label %38

38:                                               ; preds = %35, %32
  %39 = call i32 @bpstat_num(i32* %5)
  store i32 %39, i32* %6, align 4
  br label %26

40:                                               ; preds = %26
  br label %52

41:                                               ; preds = %22
  %42 = load i64, i64* @stop_signal, align 8
  %43 = load i64, i64* @TARGET_SIGNAL_0, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %51

45:                                               ; preds = %41
  %46 = load i64, i64* @stop_signal, align 8
  %47 = call i32 @target_signal_to_name(i64 %46)
  %48 = load i64, i64* @stop_signal, align 8
  %49 = call i32 @target_signal_to_string(i64 %48)
  %50 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0), i32 %47, i32 %49)
  br label %51

51:                                               ; preds = %45, %41
  br label %52

52:                                               ; preds = %51, %40
  br label %53

53:                                               ; preds = %52, %20
  %54 = load i32, i32* %4, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %53
  %57 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.7, i64 0, i64 0))
  %58 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0))
  br label %59

59:                                               ; preds = %11, %56, %53
  ret void
}

declare dso_local i32 @bpstat_num(i32*) #1

declare dso_local i32 @printf_filtered(i8*, ...) #1

declare dso_local i32 @target_files_info(...) #1

declare dso_local i32 @local_hex_string(i64) #1

declare dso_local i32 @target_signal_to_name(i64) #1

declare dso_local i32 @target_signal_to_string(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
