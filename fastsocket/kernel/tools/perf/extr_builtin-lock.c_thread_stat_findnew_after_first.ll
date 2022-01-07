; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/extr_builtin-lock.c_thread_stat_findnew_after_first.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/extr_builtin-lock.c_thread_stat_findnew_after_first.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread_stat = type { i32, i32 }

@.str = private unnamed_addr constant [26 x i8] c"memory allocation failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.thread_stat* (i32)* @thread_stat_findnew_after_first to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.thread_stat* @thread_stat_findnew_after_first(i32 %0) #0 {
  %2 = alloca %struct.thread_stat*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread_stat*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call %struct.thread_stat* @thread_stat_find(i32 %5)
  store %struct.thread_stat* %6, %struct.thread_stat** %4, align 8
  %7 = load %struct.thread_stat*, %struct.thread_stat** %4, align 8
  %8 = icmp ne %struct.thread_stat* %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load %struct.thread_stat*, %struct.thread_stat** %4, align 8
  store %struct.thread_stat* %10, %struct.thread_stat** %2, align 8
  br label %27

11:                                               ; preds = %1
  %12 = call %struct.thread_stat* @zalloc(i32 8)
  store %struct.thread_stat* %12, %struct.thread_stat** %4, align 8
  %13 = load %struct.thread_stat*, %struct.thread_stat** %4, align 8
  %14 = icmp ne %struct.thread_stat* %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %11
  %16 = call i32 @pr_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  store %struct.thread_stat* null, %struct.thread_stat** %2, align 8
  br label %27

17:                                               ; preds = %11
  %18 = load i32, i32* %3, align 4
  %19 = load %struct.thread_stat*, %struct.thread_stat** %4, align 8
  %20 = getelementptr inbounds %struct.thread_stat, %struct.thread_stat* %19, i32 0, i32 1
  store i32 %18, i32* %20, align 4
  %21 = load %struct.thread_stat*, %struct.thread_stat** %4, align 8
  %22 = getelementptr inbounds %struct.thread_stat, %struct.thread_stat* %21, i32 0, i32 0
  %23 = call i32 @INIT_LIST_HEAD(i32* %22)
  %24 = load %struct.thread_stat*, %struct.thread_stat** %4, align 8
  %25 = call i32 @thread_stat_insert(%struct.thread_stat* %24)
  %26 = load %struct.thread_stat*, %struct.thread_stat** %4, align 8
  store %struct.thread_stat* %26, %struct.thread_stat** %2, align 8
  br label %27

27:                                               ; preds = %17, %15, %9
  %28 = load %struct.thread_stat*, %struct.thread_stat** %2, align 8
  ret %struct.thread_stat* %28
}

declare dso_local %struct.thread_stat* @thread_stat_find(i32) #1

declare dso_local %struct.thread_stat* @zalloc(i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @thread_stat_insert(%struct.thread_stat*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
