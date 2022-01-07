; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_monitor.c_monitor_write_memory_longlongs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_monitor.c_monitor_write_memory_longlongs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@monitor_write_memory_longlongs.hexstage = internal global [20 x i8] zeroinitializer, align 16
@current_monitor = common dso_local global %struct.TYPE_6__* null, align 8
@.str = private unnamed_addr constant [4 x i8] c"%s\0D\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32)* @monitor_write_memory_longlongs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @monitor_write_memory_longlongs(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %11, align 4
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to i64*
  store i64* %13, i64** %9, align 8
  %14 = load i32, i32* %7, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %57

17:                                               ; preds = %3
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current_monitor, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = sext i32 %21 to i64
  %23 = inttoptr i64 %22 to i8*
  %24 = load i32, i32* %5, align 4
  %25 = call i32 (i8*, ...) @monitor_printf(i8* %23, i32 %24)
  %26 = call i32 @monitor_expect_prompt(i32* null, i32 0)
  br label %27

27:                                               ; preds = %30, %17
  %28 = load i32, i32* %7, align 4
  %29 = icmp sge i32 %28, 8
  br i1 %29, label %30, label %47

30:                                               ; preds = %27
  %31 = load i64*, i64** %9, align 8
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* %10, align 8
  %33 = load i64*, i64** %9, align 8
  %34 = load i64, i64* %33, align 8
  %35 = call i8* @longlong_hexchars(i64 %34, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @monitor_write_memory_longlongs.hexstage, i64 0, i64 0))
  store i8* %35, i8** %8, align 8
  %36 = load i8*, i8** %8, align 8
  store i8 0, i8* %36, align 1
  %37 = call i32 (i8*, ...) @monitor_printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @monitor_write_memory_longlongs.hexstage, i64 0, i64 0))
  %38 = load i64*, i64** %9, align 8
  %39 = getelementptr inbounds i64, i64* %38, i32 1
  store i64* %39, i64** %9, align 8
  %40 = load i32, i32* %5, align 4
  %41 = add nsw i32 %40, 8
  store i32 %41, i32* %5, align 4
  %42 = load i32, i32* %11, align 4
  %43 = add nsw i32 %42, 8
  store i32 %43, i32* %11, align 4
  %44 = call i32 @monitor_expect_prompt(i32* null, i32 0)
  %45 = load i32, i32* %7, align 4
  %46 = sub nsw i32 %45, 8
  store i32 %46, i32* %7, align 4
  br label %27

47:                                               ; preds = %27
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current_monitor, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = sext i32 %51 to i64
  %53 = inttoptr i64 %52 to i8*
  %54 = call i32 (i8*, ...) @monitor_printf(i8* %53)
  %55 = call i32 @monitor_expect_prompt(i32* null, i32 0)
  %56 = load i32, i32* %11, align 4
  store i32 %56, i32* %4, align 4
  br label %57

57:                                               ; preds = %47, %16
  %58 = load i32, i32* %4, align 4
  ret i32 %58
}

declare dso_local i32 @monitor_printf(i8*, ...) #1

declare dso_local i32 @monitor_expect_prompt(i32*, i32) #1

declare dso_local i8* @longlong_hexchars(i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
