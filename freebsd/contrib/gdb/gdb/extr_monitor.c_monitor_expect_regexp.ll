; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_monitor.c_monitor_expect_regexp.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_monitor.c_monitor_expect_regexp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.re_pattern_buffer = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"MON Expecting regexp\0A\00", align 1
@TARGET_BUF_SIZE = common dso_local global i32 0, align 4
@timeout = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.re_pattern_buffer*, i8*, i32)* @monitor_expect_regexp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @monitor_expect_regexp(%struct.re_pattern_buffer* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.re_pattern_buffer*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.re_pattern_buffer* %0, %struct.re_pattern_buffer** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = call i32 @monitor_debug(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %11 = load i8*, i8** %5, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %3
  %14 = load i8*, i8** %5, align 8
  store i8* %14, i8** %7, align 8
  br label %19

15:                                               ; preds = %3
  %16 = load i32, i32* @TARGET_BUF_SIZE, align 4
  %17 = call i8* @alloca(i32 %16)
  store i8* %17, i8** %7, align 8
  %18 = load i32, i32* @TARGET_BUF_SIZE, align 4
  store i32 %18, i32* %6, align 4
  br label %19

19:                                               ; preds = %15, %13
  %20 = load i8*, i8** %7, align 8
  store i8* %20, i8** %8, align 8
  br label %21

21:                                               ; preds = %19, %69
  %22 = load i8*, i8** %8, align 8
  %23 = load i8*, i8** %7, align 8
  %24 = ptrtoint i8* %22 to i64
  %25 = ptrtoint i8* %23 to i64
  %26 = sub i64 %24, %25
  %27 = load i32, i32* %6, align 4
  %28 = sext i32 %27 to i64
  %29 = icmp sge i64 %26, %28
  br i1 %29, label %30, label %45

30:                                               ; preds = %21
  %31 = load i8*, i8** %7, align 8
  %32 = load i8*, i8** %7, align 8
  %33 = load i32, i32* %6, align 4
  %34 = sdiv i32 %33, 2
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8, i8* %32, i64 %35
  %37 = load i32, i32* %6, align 4
  %38 = sdiv i32 %37, 2
  %39 = call i32 @memcpy(i8* %31, i8* %36, i32 %38)
  %40 = load i8*, i8** %7, align 8
  %41 = load i32, i32* %6, align 4
  %42 = sdiv i32 %41, 2
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8, i8* %40, i64 %43
  store i8* %44, i8** %8, align 8
  br label %45

45:                                               ; preds = %30, %21
  %46 = load i32, i32* @timeout, align 4
  %47 = call i32 @readchar(i32 %46)
  %48 = trunc i32 %47 to i8
  %49 = load i8*, i8** %8, align 8
  %50 = getelementptr inbounds i8, i8* %49, i32 1
  store i8* %50, i8** %8, align 8
  store i8 %48, i8* %49, align 1
  %51 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %4, align 8
  %52 = load i8*, i8** %7, align 8
  %53 = load i8*, i8** %8, align 8
  %54 = load i8*, i8** %7, align 8
  %55 = ptrtoint i8* %53 to i64
  %56 = ptrtoint i8* %54 to i64
  %57 = sub i64 %55, %56
  %58 = trunc i64 %57 to i32
  %59 = load i8*, i8** %8, align 8
  %60 = load i8*, i8** %7, align 8
  %61 = ptrtoint i8* %59 to i64
  %62 = ptrtoint i8* %60 to i64
  %63 = sub i64 %61, %62
  %64 = trunc i64 %63 to i32
  %65 = call i32 @re_search(%struct.re_pattern_buffer* %51, i8* %52, i32 %58, i32 0, i32 %64, i32* null)
  store i32 %65, i32* %9, align 4
  %66 = load i32, i32* %9, align 4
  %67 = icmp sge i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %45
  ret i32 1

69:                                               ; preds = %45
  br label %21
}

declare dso_local i32 @monitor_debug(i8*) #1

declare dso_local i8* @alloca(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @readchar(i32) #1

declare dso_local i32 @re_search(%struct.re_pattern_buffer*, i8*, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
