; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/dialog/extr_calendar.c_trace_date.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/dialog/extr_calendar.c_trace_date.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i64, i64, i64 }

@.str = private unnamed_addr constant [26 x i8] c"# current %04d/%02d/%02d\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"# current (unchanged)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tm*, %struct.tm*)* @trace_date to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @trace_date(%struct.tm* %0, %struct.tm* %1) #0 {
  %3 = alloca %struct.tm*, align 8
  %4 = alloca %struct.tm*, align 8
  %5 = alloca i32, align 4
  store %struct.tm* %0, %struct.tm** %3, align 8
  store %struct.tm* %1, %struct.tm** %4, align 8
  %6 = load %struct.tm*, %struct.tm** %4, align 8
  %7 = icmp eq %struct.tm* %6, null
  br i1 %7, label %32, label %8

8:                                                ; preds = %2
  %9 = load %struct.tm*, %struct.tm** %3, align 8
  %10 = getelementptr inbounds %struct.tm, %struct.tm* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.tm*, %struct.tm** %4, align 8
  %13 = getelementptr inbounds %struct.tm, %struct.tm* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %11, %14
  br i1 %15, label %32, label %16

16:                                               ; preds = %8
  %17 = load %struct.tm*, %struct.tm** %3, align 8
  %18 = getelementptr inbounds %struct.tm, %struct.tm* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.tm*, %struct.tm** %4, align 8
  %21 = getelementptr inbounds %struct.tm, %struct.tm* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %19, %22
  br i1 %23, label %32, label %24

24:                                               ; preds = %16
  %25 = load %struct.tm*, %struct.tm** %3, align 8
  %26 = getelementptr inbounds %struct.tm, %struct.tm* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.tm*, %struct.tm** %4, align 8
  %29 = getelementptr inbounds %struct.tm, %struct.tm* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %27, %30
  br label %32

32:                                               ; preds = %24, %16, %8, %2
  %33 = phi i1 [ true, %16 ], [ true, %8 ], [ true, %2 ], [ %31, %24 ]
  %34 = zext i1 %33 to i32
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %5, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %51

37:                                               ; preds = %32
  %38 = load %struct.tm*, %struct.tm** %3, align 8
  %39 = getelementptr inbounds %struct.tm, %struct.tm* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = add nsw i64 %40, 1900
  %42 = load %struct.tm*, %struct.tm** %3, align 8
  %43 = getelementptr inbounds %struct.tm, %struct.tm* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = add nsw i64 %44, 1
  %46 = load %struct.tm*, %struct.tm** %3, align 8
  %47 = getelementptr inbounds %struct.tm, %struct.tm* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = inttoptr i64 %48 to i8*
  %50 = call i32 @DLG_TRACE(i8* %49)
  br label %53

51:                                               ; preds = %32
  %52 = call i32 @DLG_TRACE(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %53

53:                                               ; preds = %51, %37
  ret void
}

declare dso_local i32 @DLG_TRACE(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
