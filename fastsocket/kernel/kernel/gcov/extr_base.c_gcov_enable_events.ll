; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/gcov/extr_base.c_gcov_enable_events.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/gcov/extr_base.c_gcov_enable_events.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gcov_info = type { %struct.gcov_info* }

@gcov_lock = common dso_local global i32 0, align 4
@gcov_events_enabled = common dso_local global i32 0, align 4
@gcov_info_head = common dso_local global %struct.gcov_info* null, align 8
@GCOV_ADD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gcov_enable_events() #0 {
  %1 = alloca %struct.gcov_info*, align 8
  %2 = call i32 @mutex_lock(i32* @gcov_lock)
  store i32 1, i32* @gcov_events_enabled, align 4
  %3 = load %struct.gcov_info*, %struct.gcov_info** @gcov_info_head, align 8
  store %struct.gcov_info* %3, %struct.gcov_info** %1, align 8
  br label %4

4:                                                ; preds = %11, %0
  %5 = load %struct.gcov_info*, %struct.gcov_info** %1, align 8
  %6 = icmp ne %struct.gcov_info* %5, null
  br i1 %6, label %7, label %15

7:                                                ; preds = %4
  %8 = load i32, i32* @GCOV_ADD, align 4
  %9 = load %struct.gcov_info*, %struct.gcov_info** %1, align 8
  %10 = call i32 @gcov_event(i32 %8, %struct.gcov_info* %9)
  br label %11

11:                                               ; preds = %7
  %12 = load %struct.gcov_info*, %struct.gcov_info** %1, align 8
  %13 = getelementptr inbounds %struct.gcov_info, %struct.gcov_info* %12, i32 0, i32 0
  %14 = load %struct.gcov_info*, %struct.gcov_info** %13, align 8
  store %struct.gcov_info* %14, %struct.gcov_info** %1, align 8
  br label %4

15:                                               ; preds = %4
  %16 = call i32 @mutex_unlock(i32* @gcov_lock)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @gcov_event(i32, %struct.gcov_info*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
