; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_inode-map.c_start_caching.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_inode-map.c_start_caching.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_root = type { i64, %struct.TYPE_2__, i32, i32, %struct.btrfs_free_space_ctl* }
%struct.TYPE_2__ = type { i32 }
%struct.btrfs_free_space_ctl = type { i32 }
%struct.task_struct = type { i32 }

@INODE_MAP_CACHE = common dso_local global i32 0, align 4
@BTRFS_CACHE_NO = common dso_local global i64 0, align 8
@BTRFS_CACHE_STARTED = common dso_local global i64 0, align 8
@BTRFS_CACHE_FINISHED = common dso_local global i64 0, align 8
@BTRFS_LAST_FREE_OBJECTID = common dso_local global i64 0, align 8
@caching_kthread = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"btrfs-ino-cache-%llu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.btrfs_root*)* @start_caching to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @start_caching(%struct.btrfs_root* %0) #0 {
  %2 = alloca %struct.btrfs_root*, align 8
  %3 = alloca %struct.btrfs_free_space_ctl*, align 8
  %4 = alloca %struct.task_struct*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.btrfs_root* %0, %struct.btrfs_root** %2, align 8
  %7 = load %struct.btrfs_root*, %struct.btrfs_root** %2, align 8
  %8 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %7, i32 0, i32 4
  %9 = load %struct.btrfs_free_space_ctl*, %struct.btrfs_free_space_ctl** %8, align 8
  store %struct.btrfs_free_space_ctl* %9, %struct.btrfs_free_space_ctl** %3, align 8
  %10 = load %struct.btrfs_root*, %struct.btrfs_root** %2, align 8
  %11 = load i32, i32* @INODE_MAP_CACHE, align 4
  %12 = call i32 @btrfs_test_opt(%struct.btrfs_root* %10, i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  br label %80

15:                                               ; preds = %1
  %16 = load %struct.btrfs_root*, %struct.btrfs_root** %2, align 8
  %17 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %16, i32 0, i32 2
  %18 = call i32 @spin_lock(i32* %17)
  %19 = load %struct.btrfs_root*, %struct.btrfs_root** %2, align 8
  %20 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @BTRFS_CACHE_NO, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %15
  %25 = load %struct.btrfs_root*, %struct.btrfs_root** %2, align 8
  %26 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %25, i32 0, i32 2
  %27 = call i32 @spin_unlock(i32* %26)
  br label %80

28:                                               ; preds = %15
  %29 = load i64, i64* @BTRFS_CACHE_STARTED, align 8
  %30 = load %struct.btrfs_root*, %struct.btrfs_root** %2, align 8
  %31 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %30, i32 0, i32 0
  store i64 %29, i64* %31, align 8
  %32 = load %struct.btrfs_root*, %struct.btrfs_root** %2, align 8
  %33 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %32, i32 0, i32 2
  %34 = call i32 @spin_unlock(i32* %33)
  %35 = load %struct.btrfs_root*, %struct.btrfs_root** %2, align 8
  %36 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.btrfs_root*, %struct.btrfs_root** %2, align 8
  %39 = call i32 @load_free_ino_cache(i32 %37, %struct.btrfs_root* %38)
  store i32 %39, i32* %5, align 4
  %40 = load i32, i32* %5, align 4
  %41 = icmp eq i32 %40, 1
  br i1 %41, label %42, label %52

42:                                               ; preds = %28
  %43 = load %struct.btrfs_root*, %struct.btrfs_root** %2, align 8
  %44 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %43, i32 0, i32 2
  %45 = call i32 @spin_lock(i32* %44)
  %46 = load i64, i64* @BTRFS_CACHE_FINISHED, align 8
  %47 = load %struct.btrfs_root*, %struct.btrfs_root** %2, align 8
  %48 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %47, i32 0, i32 0
  store i64 %46, i64* %48, align 8
  %49 = load %struct.btrfs_root*, %struct.btrfs_root** %2, align 8
  %50 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %49, i32 0, i32 2
  %51 = call i32 @spin_unlock(i32* %50)
  br label %80

52:                                               ; preds = %28
  %53 = load %struct.btrfs_root*, %struct.btrfs_root** %2, align 8
  %54 = call i32 @btrfs_find_free_objectid(%struct.btrfs_root* %53, i64* %6)
  store i32 %54, i32* %5, align 4
  %55 = load i32, i32* %5, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %69, label %57

57:                                               ; preds = %52
  %58 = load i64, i64* %6, align 8
  %59 = load i64, i64* @BTRFS_LAST_FREE_OBJECTID, align 8
  %60 = icmp sle i64 %58, %59
  br i1 %60, label %61, label %69

61:                                               ; preds = %57
  %62 = load %struct.btrfs_free_space_ctl*, %struct.btrfs_free_space_ctl** %3, align 8
  %63 = load i64, i64* %6, align 8
  %64 = load i64, i64* @BTRFS_LAST_FREE_OBJECTID, align 8
  %65 = load i64, i64* %6, align 8
  %66 = sub nsw i64 %64, %65
  %67 = add nsw i64 %66, 1
  %68 = call i32 @__btrfs_add_free_space(%struct.btrfs_free_space_ctl* %62, i64 %63, i64 %67)
  br label %69

69:                                               ; preds = %61, %57, %52
  %70 = load i32, i32* @caching_kthread, align 4
  %71 = load %struct.btrfs_root*, %struct.btrfs_root** %2, align 8
  %72 = load %struct.btrfs_root*, %struct.btrfs_root** %2, align 8
  %73 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = call %struct.task_struct* @kthread_run(i32 %70, %struct.btrfs_root* %71, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %75)
  store %struct.task_struct* %76, %struct.task_struct** %4, align 8
  %77 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %78 = call i32 @IS_ERR(%struct.task_struct* %77)
  %79 = call i32 @BUG_ON(i32 %78)
  br label %80

80:                                               ; preds = %69, %42, %24, %14
  ret void
}

declare dso_local i32 @btrfs_test_opt(%struct.btrfs_root*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @load_free_ino_cache(i32, %struct.btrfs_root*) #1

declare dso_local i32 @btrfs_find_free_objectid(%struct.btrfs_root*, i64*) #1

declare dso_local i32 @__btrfs_add_free_space(%struct.btrfs_free_space_ctl*, i64, i64) #1

declare dso_local %struct.task_struct* @kthread_run(i32, %struct.btrfs_root*, i8*, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @IS_ERR(%struct.task_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
