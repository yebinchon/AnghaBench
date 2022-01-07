; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/jfs/extr_jfs_metapage.c___lock_metapage.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/jfs/extr_jfs_metapage.c___lock_metapage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.metapage = type { i32, i32 }

@wait = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@mpStat = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@TASK_UNINTERRUPTIBLE = common dso_local global i32 0, align 4
@TASK_RUNNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.metapage*)* @__lock_metapage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__lock_metapage(%struct.metapage* %0) #0 {
  %2 = alloca %struct.metapage*, align 8
  store %struct.metapage* %0, %struct.metapage** %2, align 8
  %3 = load i32, i32* @wait, align 4
  %4 = load i32, i32* @current, align 4
  %5 = call i32 @DECLARE_WAITQUEUE(i32 %3, i32 %4)
  %6 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mpStat, i32 0, i32 0), align 4
  %7 = call i32 @INCREMENT(i32 %6)
  %8 = load %struct.metapage*, %struct.metapage** %2, align 8
  %9 = getelementptr inbounds %struct.metapage, %struct.metapage* %8, i32 0, i32 0
  %10 = call i32 @add_wait_queue_exclusive(i32* %9, i32* @wait)
  br label %11

11:                                               ; preds = %28, %1
  %12 = load i32, i32* @TASK_UNINTERRUPTIBLE, align 4
  %13 = call i32 @set_current_state(i32 %12)
  %14 = load %struct.metapage*, %struct.metapage** %2, align 8
  %15 = call i64 @metapage_locked(%struct.metapage* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %27

17:                                               ; preds = %11
  %18 = load %struct.metapage*, %struct.metapage** %2, align 8
  %19 = getelementptr inbounds %struct.metapage, %struct.metapage* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @unlock_page(i32 %20)
  %22 = call i32 (...) @io_schedule()
  %23 = load %struct.metapage*, %struct.metapage** %2, align 8
  %24 = getelementptr inbounds %struct.metapage, %struct.metapage* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @lock_page(i32 %25)
  br label %27

27:                                               ; preds = %17, %11
  br label %28

28:                                               ; preds = %27
  %29 = load %struct.metapage*, %struct.metapage** %2, align 8
  %30 = call i64 @trylock_metapage(%struct.metapage* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %11, label %32

32:                                               ; preds = %28
  %33 = load i32, i32* @TASK_RUNNING, align 4
  %34 = call i32 @__set_current_state(i32 %33)
  %35 = load %struct.metapage*, %struct.metapage** %2, align 8
  %36 = getelementptr inbounds %struct.metapage, %struct.metapage* %35, i32 0, i32 0
  %37 = call i32 @remove_wait_queue(i32* %36, i32* @wait)
  ret void
}

declare dso_local i32 @DECLARE_WAITQUEUE(i32, i32) #1

declare dso_local i32 @INCREMENT(i32) #1

declare dso_local i32 @add_wait_queue_exclusive(i32*, i32*) #1

declare dso_local i32 @set_current_state(i32) #1

declare dso_local i64 @metapage_locked(%struct.metapage*) #1

declare dso_local i32 @unlock_page(i32) #1

declare dso_local i32 @io_schedule(...) #1

declare dso_local i32 @lock_page(i32) #1

declare dso_local i64 @trylock_metapage(%struct.metapage*) #1

declare dso_local i32 @__set_current_state(i32) #1

declare dso_local i32 @remove_wait_queue(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
