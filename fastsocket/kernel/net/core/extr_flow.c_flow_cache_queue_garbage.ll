; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_flow.c_flow_cache_queue_garbage.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_flow.c_flow_cache_queue_garbage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.flow_cache_percpu = type { i32 }
%struct.list_head = type { i32 }

@flow_cache_gc_lock = common dso_local global i32 0, align 4
@flow_cache_gc_list = common dso_local global i32 0, align 4
@flow_cache_gc_work = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.flow_cache_percpu*, i32, %struct.list_head*)* @flow_cache_queue_garbage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @flow_cache_queue_garbage(%struct.flow_cache_percpu* %0, i32 %1, %struct.list_head* %2) #0 {
  %4 = alloca %struct.flow_cache_percpu*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.list_head*, align 8
  store %struct.flow_cache_percpu* %0, %struct.flow_cache_percpu** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.list_head* %2, %struct.list_head** %6, align 8
  %7 = load i32, i32* %5, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %20

9:                                                ; preds = %3
  %10 = load i32, i32* %5, align 4
  %11 = load %struct.flow_cache_percpu*, %struct.flow_cache_percpu** %4, align 8
  %12 = getelementptr inbounds %struct.flow_cache_percpu, %struct.flow_cache_percpu* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = sub nsw i32 %13, %10
  store i32 %14, i32* %12, align 4
  %15 = call i32 @spin_lock_bh(i32* @flow_cache_gc_lock)
  %16 = load %struct.list_head*, %struct.list_head** %6, align 8
  %17 = call i32 @list_splice_tail(%struct.list_head* %16, i32* @flow_cache_gc_list)
  %18 = call i32 @spin_unlock_bh(i32* @flow_cache_gc_lock)
  %19 = call i32 @schedule_work(i32* @flow_cache_gc_work)
  br label %20

20:                                               ; preds = %9, %3
  ret void
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @list_splice_tail(%struct.list_head*, i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
