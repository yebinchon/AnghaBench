; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_glock.c_gfs2_glock_put.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_glock.c_gfs2_glock_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_glock = type { i32, i32, i32, i32, %struct.gfs2_sbd* }
%struct.gfs2_sbd = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.gfs2_glock*)* }
%struct.address_space = type { i64 }

@lru_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gfs2_glock_put(%struct.gfs2_glock* %0) #0 {
  %2 = alloca %struct.gfs2_glock*, align 8
  %3 = alloca %struct.gfs2_sbd*, align 8
  %4 = alloca %struct.address_space*, align 8
  store %struct.gfs2_glock* %0, %struct.gfs2_glock** %2, align 8
  %5 = load %struct.gfs2_glock*, %struct.gfs2_glock** %2, align 8
  %6 = getelementptr inbounds %struct.gfs2_glock, %struct.gfs2_glock* %5, i32 0, i32 4
  %7 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %6, align 8
  store %struct.gfs2_sbd* %7, %struct.gfs2_sbd** %3, align 8
  %8 = load %struct.gfs2_glock*, %struct.gfs2_glock** %2, align 8
  %9 = call %struct.address_space* @gfs2_glock2aspace(%struct.gfs2_glock* %8)
  store %struct.address_space* %9, %struct.address_space** %4, align 8
  %10 = load %struct.gfs2_glock*, %struct.gfs2_glock** %2, align 8
  %11 = getelementptr inbounds %struct.gfs2_glock, %struct.gfs2_glock* %10, i32 0, i32 3
  %12 = call i64 @atomic_dec_and_lock(i32* %11, i32* @lru_lock)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %59

14:                                               ; preds = %1
  %15 = load %struct.gfs2_glock*, %struct.gfs2_glock** %2, align 8
  %16 = call i32 @__gfs2_glock_remove_from_lru(%struct.gfs2_glock* %15)
  %17 = call i32 @spin_unlock(i32* @lru_lock)
  %18 = load %struct.gfs2_glock*, %struct.gfs2_glock** %2, align 8
  %19 = getelementptr inbounds %struct.gfs2_glock, %struct.gfs2_glock* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @spin_lock_bucket(i32 %20)
  %22 = load %struct.gfs2_glock*, %struct.gfs2_glock** %2, align 8
  %23 = getelementptr inbounds %struct.gfs2_glock, %struct.gfs2_glock* %22, i32 0, i32 2
  %24 = call i32 @hlist_bl_del_rcu(i32* %23)
  %25 = load %struct.gfs2_glock*, %struct.gfs2_glock** %2, align 8
  %26 = getelementptr inbounds %struct.gfs2_glock, %struct.gfs2_glock* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @spin_unlock_bucket(i32 %27)
  %29 = load %struct.gfs2_glock*, %struct.gfs2_glock** %2, align 8
  %30 = load %struct.gfs2_glock*, %struct.gfs2_glock** %2, align 8
  %31 = getelementptr inbounds %struct.gfs2_glock, %struct.gfs2_glock* %30, i32 0, i32 0
  %32 = call i32 @list_empty(i32* %31)
  %33 = icmp ne i32 %32, 0
  %34 = xor i1 %33, true
  %35 = zext i1 %34 to i32
  %36 = call i32 @GLOCK_BUG_ON(%struct.gfs2_glock* %29, i32 %35)
  %37 = load %struct.gfs2_glock*, %struct.gfs2_glock** %2, align 8
  %38 = load %struct.address_space*, %struct.address_space** %4, align 8
  %39 = icmp ne %struct.address_space* %38, null
  br i1 %39, label %40, label %45

40:                                               ; preds = %14
  %41 = load %struct.address_space*, %struct.address_space** %4, align 8
  %42 = getelementptr inbounds %struct.address_space, %struct.address_space* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br label %45

45:                                               ; preds = %40, %14
  %46 = phi i1 [ false, %14 ], [ %44, %40 ]
  %47 = zext i1 %46 to i32
  %48 = call i32 @GLOCK_BUG_ON(%struct.gfs2_glock* %37, i32 %47)
  %49 = load %struct.gfs2_glock*, %struct.gfs2_glock** %2, align 8
  %50 = call i32 @trace_gfs2_glock_put(%struct.gfs2_glock* %49)
  %51 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %52 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i32 (%struct.gfs2_glock*)*, i32 (%struct.gfs2_glock*)** %55, align 8
  %57 = load %struct.gfs2_glock*, %struct.gfs2_glock** %2, align 8
  %58 = call i32 %56(%struct.gfs2_glock* %57)
  br label %59

59:                                               ; preds = %45, %1
  ret void
}

declare dso_local %struct.address_space* @gfs2_glock2aspace(%struct.gfs2_glock*) #1

declare dso_local i64 @atomic_dec_and_lock(i32*, i32*) #1

declare dso_local i32 @__gfs2_glock_remove_from_lru(%struct.gfs2_glock*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @spin_lock_bucket(i32) #1

declare dso_local i32 @hlist_bl_del_rcu(i32*) #1

declare dso_local i32 @spin_unlock_bucket(i32) #1

declare dso_local i32 @GLOCK_BUG_ON(%struct.gfs2_glock*, i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @trace_gfs2_glock_put(%struct.gfs2_glock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
