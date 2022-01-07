; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_free-space-cache.c_btrfs_return_cluster_to_free_space.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_free-space-cache.c_btrfs_return_cluster_to_free_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_block_group_cache = type { %struct.btrfs_free_space_ctl*, i32 }
%struct.btrfs_free_space_ctl = type { i32 }
%struct.btrfs_free_cluster = type { i32, %struct.btrfs_block_group_cache* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btrfs_return_cluster_to_free_space(%struct.btrfs_block_group_cache* %0, %struct.btrfs_free_cluster* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.btrfs_block_group_cache*, align 8
  %5 = alloca %struct.btrfs_free_cluster*, align 8
  %6 = alloca %struct.btrfs_free_space_ctl*, align 8
  %7 = alloca i32, align 4
  store %struct.btrfs_block_group_cache* %0, %struct.btrfs_block_group_cache** %4, align 8
  store %struct.btrfs_free_cluster* %1, %struct.btrfs_free_cluster** %5, align 8
  %8 = load %struct.btrfs_free_cluster*, %struct.btrfs_free_cluster** %5, align 8
  %9 = getelementptr inbounds %struct.btrfs_free_cluster, %struct.btrfs_free_cluster* %8, i32 0, i32 0
  %10 = call i32 @spin_lock(i32* %9)
  %11 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %4, align 8
  %12 = icmp ne %struct.btrfs_block_group_cache* %11, null
  br i1 %12, label %24, label %13

13:                                               ; preds = %2
  %14 = load %struct.btrfs_free_cluster*, %struct.btrfs_free_cluster** %5, align 8
  %15 = getelementptr inbounds %struct.btrfs_free_cluster, %struct.btrfs_free_cluster* %14, i32 0, i32 1
  %16 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %15, align 8
  store %struct.btrfs_block_group_cache* %16, %struct.btrfs_block_group_cache** %4, align 8
  %17 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %4, align 8
  %18 = icmp ne %struct.btrfs_block_group_cache* %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %13
  %20 = load %struct.btrfs_free_cluster*, %struct.btrfs_free_cluster** %5, align 8
  %21 = getelementptr inbounds %struct.btrfs_free_cluster, %struct.btrfs_free_cluster* %20, i32 0, i32 0
  %22 = call i32 @spin_unlock(i32* %21)
  store i32 0, i32* %3, align 4
  br label %57

23:                                               ; preds = %13
  br label %35

24:                                               ; preds = %2
  %25 = load %struct.btrfs_free_cluster*, %struct.btrfs_free_cluster** %5, align 8
  %26 = getelementptr inbounds %struct.btrfs_free_cluster, %struct.btrfs_free_cluster* %25, i32 0, i32 1
  %27 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %26, align 8
  %28 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %4, align 8
  %29 = icmp ne %struct.btrfs_block_group_cache* %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %24
  %31 = load %struct.btrfs_free_cluster*, %struct.btrfs_free_cluster** %5, align 8
  %32 = getelementptr inbounds %struct.btrfs_free_cluster, %struct.btrfs_free_cluster* %31, i32 0, i32 0
  %33 = call i32 @spin_unlock(i32* %32)
  store i32 0, i32* %3, align 4
  br label %57

34:                                               ; preds = %24
  br label %35

35:                                               ; preds = %34, %23
  %36 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %4, align 8
  %37 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %36, i32 0, i32 1
  %38 = call i32 @atomic_inc(i32* %37)
  %39 = load %struct.btrfs_free_cluster*, %struct.btrfs_free_cluster** %5, align 8
  %40 = getelementptr inbounds %struct.btrfs_free_cluster, %struct.btrfs_free_cluster* %39, i32 0, i32 0
  %41 = call i32 @spin_unlock(i32* %40)
  %42 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %4, align 8
  %43 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %42, i32 0, i32 0
  %44 = load %struct.btrfs_free_space_ctl*, %struct.btrfs_free_space_ctl** %43, align 8
  store %struct.btrfs_free_space_ctl* %44, %struct.btrfs_free_space_ctl** %6, align 8
  %45 = load %struct.btrfs_free_space_ctl*, %struct.btrfs_free_space_ctl** %6, align 8
  %46 = getelementptr inbounds %struct.btrfs_free_space_ctl, %struct.btrfs_free_space_ctl* %45, i32 0, i32 0
  %47 = call i32 @spin_lock(i32* %46)
  %48 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %4, align 8
  %49 = load %struct.btrfs_free_cluster*, %struct.btrfs_free_cluster** %5, align 8
  %50 = call i32 @__btrfs_return_cluster_to_free_space(%struct.btrfs_block_group_cache* %48, %struct.btrfs_free_cluster* %49)
  store i32 %50, i32* %7, align 4
  %51 = load %struct.btrfs_free_space_ctl*, %struct.btrfs_free_space_ctl** %6, align 8
  %52 = getelementptr inbounds %struct.btrfs_free_space_ctl, %struct.btrfs_free_space_ctl* %51, i32 0, i32 0
  %53 = call i32 @spin_unlock(i32* %52)
  %54 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %4, align 8
  %55 = call i32 @btrfs_put_block_group(%struct.btrfs_block_group_cache* %54)
  %56 = load i32, i32* %7, align 4
  store i32 %56, i32* %3, align 4
  br label %57

57:                                               ; preds = %35, %30, %19
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @__btrfs_return_cluster_to_free_space(%struct.btrfs_block_group_cache*, %struct.btrfs_free_cluster*) #1

declare dso_local i32 @btrfs_put_block_group(%struct.btrfs_block_group_cache*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
