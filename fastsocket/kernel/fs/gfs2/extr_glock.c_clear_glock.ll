; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_glock.c_clear_glock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_glock.c_clear_glock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_glock = type { i64, i32, i32 }

@LM_ST_UNLOCKED = common dso_local global i64 0, align 8
@glock_workqueue = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gfs2_glock*)* @clear_glock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clear_glock(%struct.gfs2_glock* %0) #0 {
  %2 = alloca %struct.gfs2_glock*, align 8
  store %struct.gfs2_glock* %0, %struct.gfs2_glock** %2, align 8
  %3 = load %struct.gfs2_glock*, %struct.gfs2_glock** %2, align 8
  %4 = call i32 @gfs2_glock_remove_from_lru(%struct.gfs2_glock* %3)
  %5 = load %struct.gfs2_glock*, %struct.gfs2_glock** %2, align 8
  %6 = getelementptr inbounds %struct.gfs2_glock, %struct.gfs2_glock* %5, i32 0, i32 2
  %7 = call i32 @spin_lock(i32* %6)
  %8 = load %struct.gfs2_glock*, %struct.gfs2_glock** %2, align 8
  %9 = call i32* @find_first_holder(%struct.gfs2_glock* %8)
  %10 = icmp eq i32* %9, null
  br i1 %10, label %11, label %21

11:                                               ; preds = %1
  %12 = load %struct.gfs2_glock*, %struct.gfs2_glock** %2, align 8
  %13 = getelementptr inbounds %struct.gfs2_glock, %struct.gfs2_glock* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @LM_ST_UNLOCKED, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %11
  %18 = load %struct.gfs2_glock*, %struct.gfs2_glock** %2, align 8
  %19 = load i64, i64* @LM_ST_UNLOCKED, align 8
  %20 = call i32 @handle_callback(%struct.gfs2_glock* %18, i64 %19, i32 0, i32 0)
  br label %21

21:                                               ; preds = %17, %11, %1
  %22 = load %struct.gfs2_glock*, %struct.gfs2_glock** %2, align 8
  %23 = getelementptr inbounds %struct.gfs2_glock, %struct.gfs2_glock* %22, i32 0, i32 2
  %24 = call i32 @spin_unlock(i32* %23)
  %25 = load i32, i32* @glock_workqueue, align 4
  %26 = load %struct.gfs2_glock*, %struct.gfs2_glock** %2, align 8
  %27 = getelementptr inbounds %struct.gfs2_glock, %struct.gfs2_glock* %26, i32 0, i32 1
  %28 = call i64 @queue_delayed_work(i32 %25, i32* %27, i32 0)
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %21
  %31 = load %struct.gfs2_glock*, %struct.gfs2_glock** %2, align 8
  %32 = call i32 @gfs2_glock_put(%struct.gfs2_glock* %31)
  br label %33

33:                                               ; preds = %30, %21
  ret void
}

declare dso_local i32 @gfs2_glock_remove_from_lru(%struct.gfs2_glock*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32* @find_first_holder(%struct.gfs2_glock*) #1

declare dso_local i32 @handle_callback(%struct.gfs2_glock*, i64, i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i64 @queue_delayed_work(i32, i32*, i32) #1

declare dso_local i32 @gfs2_glock_put(%struct.gfs2_glock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
