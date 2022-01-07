; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_delayed-ref.c_btrfs_delayed_ref_lock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_delayed-ref.c_btrfs_delayed_ref_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_trans_handle = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.btrfs_delayed_ref_root }
%struct.btrfs_delayed_ref_root = type { i32 }
%struct.btrfs_delayed_ref_head = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@EAGAIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btrfs_delayed_ref_lock(%struct.btrfs_trans_handle* %0, %struct.btrfs_delayed_ref_head* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.btrfs_trans_handle*, align 8
  %5 = alloca %struct.btrfs_delayed_ref_head*, align 8
  %6 = alloca %struct.btrfs_delayed_ref_root*, align 8
  store %struct.btrfs_trans_handle* %0, %struct.btrfs_trans_handle** %4, align 8
  store %struct.btrfs_delayed_ref_head* %1, %struct.btrfs_delayed_ref_head** %5, align 8
  %7 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %4, align 8
  %8 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %7, i32 0, i32 0
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  store %struct.btrfs_delayed_ref_root* %10, %struct.btrfs_delayed_ref_root** %6, align 8
  %11 = load %struct.btrfs_delayed_ref_root*, %struct.btrfs_delayed_ref_root** %6, align 8
  %12 = getelementptr inbounds %struct.btrfs_delayed_ref_root, %struct.btrfs_delayed_ref_root* %11, i32 0, i32 0
  %13 = call i32 @assert_spin_locked(i32* %12)
  %14 = load %struct.btrfs_delayed_ref_head*, %struct.btrfs_delayed_ref_head** %5, align 8
  %15 = getelementptr inbounds %struct.btrfs_delayed_ref_head, %struct.btrfs_delayed_ref_head* %14, i32 0, i32 1
  %16 = call i64 @mutex_trylock(i32* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %51

19:                                               ; preds = %2
  %20 = load %struct.btrfs_delayed_ref_head*, %struct.btrfs_delayed_ref_head** %5, align 8
  %21 = getelementptr inbounds %struct.btrfs_delayed_ref_head, %struct.btrfs_delayed_ref_head* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  %23 = call i32 @atomic_inc(i32* %22)
  %24 = load %struct.btrfs_delayed_ref_root*, %struct.btrfs_delayed_ref_root** %6, align 8
  %25 = getelementptr inbounds %struct.btrfs_delayed_ref_root, %struct.btrfs_delayed_ref_root* %24, i32 0, i32 0
  %26 = call i32 @spin_unlock(i32* %25)
  %27 = load %struct.btrfs_delayed_ref_head*, %struct.btrfs_delayed_ref_head** %5, align 8
  %28 = getelementptr inbounds %struct.btrfs_delayed_ref_head, %struct.btrfs_delayed_ref_head* %27, i32 0, i32 1
  %29 = call i32 @mutex_lock(i32* %28)
  %30 = load %struct.btrfs_delayed_ref_root*, %struct.btrfs_delayed_ref_root** %6, align 8
  %31 = getelementptr inbounds %struct.btrfs_delayed_ref_root, %struct.btrfs_delayed_ref_root* %30, i32 0, i32 0
  %32 = call i32 @spin_lock(i32* %31)
  %33 = load %struct.btrfs_delayed_ref_head*, %struct.btrfs_delayed_ref_head** %5, align 8
  %34 = getelementptr inbounds %struct.btrfs_delayed_ref_head, %struct.btrfs_delayed_ref_head* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %47, label %38

38:                                               ; preds = %19
  %39 = load %struct.btrfs_delayed_ref_head*, %struct.btrfs_delayed_ref_head** %5, align 8
  %40 = getelementptr inbounds %struct.btrfs_delayed_ref_head, %struct.btrfs_delayed_ref_head* %39, i32 0, i32 1
  %41 = call i32 @mutex_unlock(i32* %40)
  %42 = load %struct.btrfs_delayed_ref_head*, %struct.btrfs_delayed_ref_head** %5, align 8
  %43 = getelementptr inbounds %struct.btrfs_delayed_ref_head, %struct.btrfs_delayed_ref_head* %42, i32 0, i32 0
  %44 = call i32 @btrfs_put_delayed_ref(%struct.TYPE_4__* %43)
  %45 = load i32, i32* @EAGAIN, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %3, align 4
  br label %51

47:                                               ; preds = %19
  %48 = load %struct.btrfs_delayed_ref_head*, %struct.btrfs_delayed_ref_head** %5, align 8
  %49 = getelementptr inbounds %struct.btrfs_delayed_ref_head, %struct.btrfs_delayed_ref_head* %48, i32 0, i32 0
  %50 = call i32 @btrfs_put_delayed_ref(%struct.TYPE_4__* %49)
  store i32 0, i32* %3, align 4
  br label %51

51:                                               ; preds = %47, %38, %18
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i32 @assert_spin_locked(i32*) #1

declare dso_local i64 @mutex_trylock(i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @btrfs_put_delayed_ref(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
