; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/bench/extr_mem-memcpy.c_init_clock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/bench/extr_mem-memcpy.c_init_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@clock_attr = common dso_local global i32 0, align 4
@clock_fd = common dso_local global i64 0, align 8
@errno = common dso_local global i64 0, align 8
@ENOSYS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [52 x i8] c"No CONFIG_PERF_EVENTS=y kernel support configured?\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @init_clock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_clock() #0 {
  %1 = call i32 (...) @getpid()
  %2 = call i64 @sys_perf_event_open(i32* @clock_attr, i32 %1, i32 -1, i32 -1, i32 0)
  store i64 %2, i64* @clock_fd, align 8
  %3 = load i64, i64* @clock_fd, align 8
  %4 = icmp slt i64 %3, 0
  br i1 %4, label %5, label %11

5:                                                ; preds = %0
  %6 = load i64, i64* @errno, align 8
  %7 = load i64, i64* @ENOSYS, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %11

9:                                                ; preds = %5
  %10 = call i32 @die(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  br label %16

11:                                               ; preds = %5, %0
  %12 = load i64, i64* @clock_fd, align 8
  %13 = icmp slt i64 %12, 0
  %14 = zext i1 %13 to i32
  %15 = call i32 @BUG_ON(i32 %14)
  br label %16

16:                                               ; preds = %11, %9
  ret void
}

declare dso_local i64 @sys_perf_event_open(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @getpid(...) #1

declare dso_local i32 @die(i8*) #1

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
