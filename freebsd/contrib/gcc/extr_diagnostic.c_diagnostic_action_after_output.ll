; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_diagnostic.c_diagnostic_action_after_output.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_diagnostic.c_diagnostic_action_after_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@flag_fatal_errors = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"compilation terminated due to -Wfatal-errors.\0A\00", align 1
@FATAL_EXIT_CODE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [100 x i8] c"Please submit a full bug report,\0Awith preprocessed source if appropriate.\0ASee %s for instructions.\0A\00", align 1
@bug_report_url = common dso_local global i32 0, align 4
@ICE_EXIT_CODE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"compilation terminated.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, %struct.TYPE_5__*)* @diagnostic_action_after_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @diagnostic_action_after_output(%struct.TYPE_6__* %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %4, align 8
  %5 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  switch i32 %7, label %50 [
    i32 134, label %8
    i32 130, label %8
    i32 135, label %8
    i32 128, label %8
    i32 133, label %9
    i32 129, label %9
    i32 131, label %25
    i32 132, label %38
  ]

8:                                                ; preds = %2, %2, %2, %2
  br label %52

9:                                                ; preds = %2, %2
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %9
  %15 = call i32 (...) @real_abort()
  br label %16

16:                                               ; preds = %14, %9
  %17 = load i32, i32* @flag_fatal_errors, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %16
  %20 = load i32, i32* @stderr, align 4
  %21 = call i32 (i32, i8*, ...) @fnotice(i32 %20, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @FATAL_EXIT_CODE, align 4
  %23 = call i32 @exit(i32 %22) #3
  unreachable

24:                                               ; preds = %16
  br label %52

25:                                               ; preds = %2
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = call i32 (...) @real_abort()
  br label %32

32:                                               ; preds = %30, %25
  %33 = load i32, i32* @stderr, align 4
  %34 = load i32, i32* @bug_report_url, align 4
  %35 = call i32 (i32, i8*, ...) @fnotice(i32 %33, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @.str.1, i64 0, i64 0), i32 %34)
  %36 = load i32, i32* @ICE_EXIT_CODE, align 4
  %37 = call i32 @exit(i32 %36) #3
  unreachable

38:                                               ; preds = %2
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %38
  %44 = call i32 (...) @real_abort()
  br label %45

45:                                               ; preds = %43, %38
  %46 = load i32, i32* @stderr, align 4
  %47 = call i32 (i32, i8*, ...) @fnotice(i32 %46, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %48 = load i32, i32* @FATAL_EXIT_CODE, align 4
  %49 = call i32 @exit(i32 %48) #3
  unreachable

50:                                               ; preds = %2
  %51 = call i32 (...) @gcc_unreachable()
  br label %52

52:                                               ; preds = %50, %24, %8
  ret void
}

declare dso_local i32 @real_abort(...) #1

declare dso_local i32 @fnotice(i32, i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @gcc_unreachable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
