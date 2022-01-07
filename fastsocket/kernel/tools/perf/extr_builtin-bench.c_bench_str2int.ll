; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/extr_builtin-bench.c_bench_str2int.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/extr_builtin-bench.c_bench_str2int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BENCH_FORMAT_DEFAULT = common dso_local global i32 0, align 4
@BENCH_FORMAT_DEFAULT_STR = common dso_local global i32 0, align 4
@BENCH_FORMAT_SIMPLE_STR = common dso_local global i32 0, align 4
@BENCH_FORMAT_SIMPLE = common dso_local global i32 0, align 4
@BENCH_FORMAT_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @bench_str2int to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bench_str2int(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %4 = load i8*, i8** %3, align 8
  %5 = icmp ne i8* %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = load i32, i32* @BENCH_FORMAT_DEFAULT, align 4
  store i32 %7, i32* %2, align 4
  br label %25

8:                                                ; preds = %1
  %9 = load i8*, i8** %3, align 8
  %10 = load i32, i32* @BENCH_FORMAT_DEFAULT_STR, align 4
  %11 = call i32 @strcmp(i8* %9, i32 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %8
  %14 = load i32, i32* @BENCH_FORMAT_DEFAULT, align 4
  store i32 %14, i32* %2, align 4
  br label %25

15:                                               ; preds = %8
  %16 = load i8*, i8** %3, align 8
  %17 = load i32, i32* @BENCH_FORMAT_SIMPLE_STR, align 4
  %18 = call i32 @strcmp(i8* %16, i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %15
  %21 = load i32, i32* @BENCH_FORMAT_SIMPLE, align 4
  store i32 %21, i32* %2, align 4
  br label %25

22:                                               ; preds = %15
  br label %23

23:                                               ; preds = %22
  %24 = load i32, i32* @BENCH_FORMAT_UNKNOWN, align 4
  store i32 %24, i32* %2, align 4
  br label %25

25:                                               ; preds = %23, %20, %13, %6
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

declare dso_local i32 @strcmp(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
