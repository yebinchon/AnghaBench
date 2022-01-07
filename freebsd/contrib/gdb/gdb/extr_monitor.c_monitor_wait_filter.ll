; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_monitor.c_monitor_wait_filter.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_monitor.c_monitor_wait_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.target_waitstatus = type { i32 }

@gdb_stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"monitor_wait:  excessive response from monitor: %s.\00", align 1
@monitor_debug_p = common dso_local global i64 0, align 8
@remote_debug = common dso_local global i64 0, align 8
@current_monitor = common dso_local global %struct.TYPE_2__* null, align 8
@MO_PRINT_PROGRAM_OUTPUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i32*, %struct.target_waitstatus*)* @monitor_wait_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @monitor_wait_filter(i8* %0, i32 %1, i32* %2, %struct.target_waitstatus* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.target_waitstatus*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store %struct.target_waitstatus* %3, %struct.target_waitstatus** %8, align 8
  br label %11

11:                                               ; preds = %24, %4
  %12 = load i8*, i8** %5, align 8
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @monitor_expect_prompt(i8* %12, i32 %13)
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %9, align 4
  %16 = load i32*, i32** %7, align 8
  store i32 %15, i32* %16, align 4
  %17 = load i32, i32* %9, align 4
  %18 = icmp sle i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %11
  %20 = load i32, i32* @gdb_stderr, align 4
  %21 = load i8*, i8** %5, align 8
  %22 = call i32 @fprintf_unfiltered(i32 %20, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i8* %21)
  br label %23

23:                                               ; preds = %19, %11
  br label %24

24:                                               ; preds = %23
  %25 = load i32, i32* %9, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %11, label %27

27:                                               ; preds = %24
  %28 = load i64, i64* @monitor_debug_p, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %40, label %30

30:                                               ; preds = %27
  %31 = load i64, i64* @remote_debug, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %40, label %33

33:                                               ; preds = %30
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current_monitor, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @MO_PRINT_PROGRAM_OUTPUT, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %67

40:                                               ; preds = %33, %30, %27
  store i32 0, i32* %10, align 4
  br label %41

41:                                               ; preds = %63, %40
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* %9, align 4
  %44 = sub nsw i32 %43, 1
  %45 = icmp slt i32 %42, %44
  br i1 %45, label %46, label %66

46:                                               ; preds = %41
  %47 = load i8*, i8** %5, align 8
  %48 = load i32, i32* %10, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8, i8* %47, i64 %49
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp eq i32 %52, 15
  br i1 %53, label %54, label %62

54:                                               ; preds = %46
  %55 = load i8*, i8** %5, align 8
  %56 = load i32, i32* %10, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %10, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i8, i8* %55, i64 %58
  %60 = load i8, i8* %59, align 1
  %61 = call i32 @putchar_unfiltered(i8 signext %60)
  br label %62

62:                                               ; preds = %54, %46
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %10, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %10, align 4
  br label %41

66:                                               ; preds = %41
  br label %67

67:                                               ; preds = %66, %33
  ret void
}

declare dso_local i32 @monitor_expect_prompt(i8*, i32) #1

declare dso_local i32 @fprintf_unfiltered(i32, i8*, i8*) #1

declare dso_local i32 @putchar_unfiltered(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
