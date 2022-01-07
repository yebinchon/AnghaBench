; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_thread_map.c_thread_map__new_str.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_thread_map.c_thread_map__new_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread_map = type { i32 }

@UINT_MAX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.thread_map* @thread_map__new_str(i8* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.thread_map*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %3
  %11 = load i8*, i8** %5, align 8
  %12 = call %struct.thread_map* @thread_map__new_by_pid_str(i8* %11)
  store %struct.thread_map* %12, %struct.thread_map** %4, align 8
  br label %26

13:                                               ; preds = %3
  %14 = load i8*, i8** %6, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %23, label %16

16:                                               ; preds = %13
  %17 = load i64, i64* %7, align 8
  %18 = load i64, i64* @UINT_MAX, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %16
  %21 = load i64, i64* %7, align 8
  %22 = call %struct.thread_map* @thread_map__new_by_uid(i64 %21)
  store %struct.thread_map* %22, %struct.thread_map** %4, align 8
  br label %26

23:                                               ; preds = %16, %13
  %24 = load i8*, i8** %6, align 8
  %25 = call %struct.thread_map* @thread_map__new_by_tid_str(i8* %24)
  store %struct.thread_map* %25, %struct.thread_map** %4, align 8
  br label %26

26:                                               ; preds = %23, %20, %10
  %27 = load %struct.thread_map*, %struct.thread_map** %4, align 8
  ret %struct.thread_map* %27
}

declare dso_local %struct.thread_map* @thread_map__new_by_pid_str(i8*) #1

declare dso_local %struct.thread_map* @thread_map__new_by_uid(i64) #1

declare dso_local %struct.thread_map* @thread_map__new_by_tid_str(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
