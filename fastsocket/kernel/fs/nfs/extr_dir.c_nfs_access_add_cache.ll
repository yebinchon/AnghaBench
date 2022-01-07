; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_dir.c_nfs_access_add_cache.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_dir.c_nfs_access_add_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.nfs_access_entry = type { i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@nfs_access_nr_entries = common dso_local global i32 0, align 4
@NFS_INO_ACL_LRU_SET = common dso_local global i32 0, align 4
@nfs_access_lru_lock = common dso_local global i32 0, align 4
@nfs_access_lru_list = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nfs_access_add_cache(%struct.inode* %0, %struct.nfs_access_entry* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.nfs_access_entry*, align 8
  %5 = alloca %struct.nfs_access_entry*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.nfs_access_entry* %1, %struct.nfs_access_entry** %4, align 8
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call %struct.nfs_access_entry* @kmalloc(i32 16, i32 %6)
  store %struct.nfs_access_entry* %7, %struct.nfs_access_entry** %5, align 8
  %8 = load %struct.nfs_access_entry*, %struct.nfs_access_entry** %5, align 8
  %9 = icmp eq %struct.nfs_access_entry* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  br label %58

11:                                               ; preds = %2
  %12 = load %struct.nfs_access_entry*, %struct.nfs_access_entry** %5, align 8
  %13 = getelementptr inbounds %struct.nfs_access_entry, %struct.nfs_access_entry* %12, i32 0, i32 3
  %14 = call i32 @RB_CLEAR_NODE(i32* %13)
  %15 = load %struct.nfs_access_entry*, %struct.nfs_access_entry** %4, align 8
  %16 = getelementptr inbounds %struct.nfs_access_entry, %struct.nfs_access_entry* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.nfs_access_entry*, %struct.nfs_access_entry** %5, align 8
  %19 = getelementptr inbounds %struct.nfs_access_entry, %struct.nfs_access_entry* %18, i32 0, i32 2
  store i32 %17, i32* %19, align 4
  %20 = load %struct.nfs_access_entry*, %struct.nfs_access_entry** %4, align 8
  %21 = getelementptr inbounds %struct.nfs_access_entry, %struct.nfs_access_entry* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @get_rpccred(i32 %22)
  %24 = load %struct.nfs_access_entry*, %struct.nfs_access_entry** %5, align 8
  %25 = getelementptr inbounds %struct.nfs_access_entry, %struct.nfs_access_entry* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 4
  %26 = load %struct.nfs_access_entry*, %struct.nfs_access_entry** %4, align 8
  %27 = getelementptr inbounds %struct.nfs_access_entry, %struct.nfs_access_entry* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.nfs_access_entry*, %struct.nfs_access_entry** %5, align 8
  %30 = getelementptr inbounds %struct.nfs_access_entry, %struct.nfs_access_entry* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  %31 = load %struct.inode*, %struct.inode** %3, align 8
  %32 = load %struct.nfs_access_entry*, %struct.nfs_access_entry** %5, align 8
  %33 = call i32 @nfs_access_add_rbtree(%struct.inode* %31, %struct.nfs_access_entry* %32)
  %34 = call i32 (...) @smp_mb__before_atomic_inc()
  %35 = call i32 @atomic_long_inc(i32* @nfs_access_nr_entries)
  %36 = call i32 (...) @smp_mb__after_atomic_inc()
  %37 = load i32, i32* @NFS_INO_ACL_LRU_SET, align 4
  %38 = load %struct.inode*, %struct.inode** %3, align 8
  %39 = call %struct.TYPE_2__* @NFS_I(%struct.inode* %38)
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = call i32 @test_bit(i32 %37, i32* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %58, label %43

43:                                               ; preds = %11
  %44 = call i32 @spin_lock(i32* @nfs_access_lru_lock)
  %45 = load i32, i32* @NFS_INO_ACL_LRU_SET, align 4
  %46 = load %struct.inode*, %struct.inode** %3, align 8
  %47 = call %struct.TYPE_2__* @NFS_I(%struct.inode* %46)
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  %49 = call i32 @test_and_set_bit(i32 %45, i32* %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %56, label %51

51:                                               ; preds = %43
  %52 = load %struct.inode*, %struct.inode** %3, align 8
  %53 = call %struct.TYPE_2__* @NFS_I(%struct.inode* %52)
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = call i32 @list_add_tail(i32* %54, i32* @nfs_access_lru_list)
  br label %56

56:                                               ; preds = %51, %43
  %57 = call i32 @spin_unlock(i32* @nfs_access_lru_lock)
  br label %58

58:                                               ; preds = %10, %56, %11
  ret void
}

declare dso_local %struct.nfs_access_entry* @kmalloc(i32, i32) #1

declare dso_local i32 @RB_CLEAR_NODE(i32*) #1

declare dso_local i32 @get_rpccred(i32) #1

declare dso_local i32 @nfs_access_add_rbtree(%struct.inode*, %struct.nfs_access_entry*) #1

declare dso_local i32 @smp_mb__before_atomic_inc(...) #1

declare dso_local i32 @atomic_long_inc(i32*) #1

declare dso_local i32 @smp_mb__after_atomic_inc(...) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local %struct.TYPE_2__* @NFS_I(%struct.inode*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
