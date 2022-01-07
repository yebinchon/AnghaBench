; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_glock.c_gfs2_glock_add_to_lru.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_glock.c_gfs2_glock_add_to_lru.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_glock = type { i32, i32 }

@lru_lock = common dso_local global i32 0, align 4
@lru_count = common dso_local global i32 0, align 4
@lru_list = common dso_local global i32 0, align 4
@GLF_LRU = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gfs2_glock_add_to_lru(%struct.gfs2_glock* %0) #0 {
  %2 = alloca %struct.gfs2_glock*, align 8
  store %struct.gfs2_glock* %0, %struct.gfs2_glock** %2, align 8
  %3 = call i32 @spin_lock(i32* @lru_lock)
  %4 = load %struct.gfs2_glock*, %struct.gfs2_glock** %2, align 8
  %5 = getelementptr inbounds %struct.gfs2_glock, %struct.gfs2_glock* %4, i32 0, i32 1
  %6 = call i32 @list_empty(i32* %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %1
  %9 = load %struct.gfs2_glock*, %struct.gfs2_glock** %2, align 8
  %10 = getelementptr inbounds %struct.gfs2_glock, %struct.gfs2_glock* %9, i32 0, i32 1
  %11 = call i32 @list_del_init(i32* %10)
  br label %14

12:                                               ; preds = %1
  %13 = call i32 @atomic_inc(i32* @lru_count)
  br label %14

14:                                               ; preds = %12, %8
  %15 = load %struct.gfs2_glock*, %struct.gfs2_glock** %2, align 8
  %16 = getelementptr inbounds %struct.gfs2_glock, %struct.gfs2_glock* %15, i32 0, i32 1
  %17 = call i32 @list_add_tail(i32* %16, i32* @lru_list)
  %18 = load i32, i32* @GLF_LRU, align 4
  %19 = load %struct.gfs2_glock*, %struct.gfs2_glock** %2, align 8
  %20 = getelementptr inbounds %struct.gfs2_glock, %struct.gfs2_glock* %19, i32 0, i32 0
  %21 = call i32 @set_bit(i32 %18, i32* %20)
  %22 = call i32 @spin_unlock(i32* @lru_lock)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
