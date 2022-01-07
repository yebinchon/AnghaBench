; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_inode-map.c_btrfs_return_ino.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_inode-map.c_btrfs_return_ino.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_root = type { i64, i64, i64, i32, i32, %struct.btrfs_free_space_ctl*, %struct.btrfs_free_space_ctl* }
%struct.btrfs_free_space_ctl = type { i32 }

@INODE_MAP_CACHE = common dso_local global i32 0, align 4
@BTRFS_CACHE_FINISHED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @btrfs_return_ino(%struct.btrfs_root* %0, i64 %1) #0 {
  %3 = alloca %struct.btrfs_root*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.btrfs_free_space_ctl*, align 8
  %6 = alloca %struct.btrfs_free_space_ctl*, align 8
  store %struct.btrfs_root* %0, %struct.btrfs_root** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.btrfs_root*, %struct.btrfs_root** %3, align 8
  %8 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %7, i32 0, i32 6
  %9 = load %struct.btrfs_free_space_ctl*, %struct.btrfs_free_space_ctl** %8, align 8
  store %struct.btrfs_free_space_ctl* %9, %struct.btrfs_free_space_ctl** %5, align 8
  %10 = load %struct.btrfs_root*, %struct.btrfs_root** %3, align 8
  %11 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %10, i32 0, i32 5
  %12 = load %struct.btrfs_free_space_ctl*, %struct.btrfs_free_space_ctl** %11, align 8
  store %struct.btrfs_free_space_ctl* %12, %struct.btrfs_free_space_ctl** %6, align 8
  %13 = load %struct.btrfs_root*, %struct.btrfs_root** %3, align 8
  %14 = load i32, i32* @INODE_MAP_CACHE, align 4
  %15 = call i32 @btrfs_test_opt(%struct.btrfs_root* %13, i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  br label %77

18:                                               ; preds = %2
  br label %19

19:                                               ; preds = %41, %18
  %20 = load %struct.btrfs_root*, %struct.btrfs_root** %3, align 8
  %21 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @BTRFS_CACHE_FINISHED, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %19
  %26 = load %struct.btrfs_free_space_ctl*, %struct.btrfs_free_space_ctl** %5, align 8
  %27 = load i64, i64* %4, align 8
  %28 = call i32 @__btrfs_add_free_space(%struct.btrfs_free_space_ctl* %26, i64 %27, i32 1)
  br label %77

29:                                               ; preds = %19
  %30 = load %struct.btrfs_root*, %struct.btrfs_root** %3, align 8
  %31 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %30, i32 0, i32 3
  %32 = call i32 @mutex_lock(i32* %31)
  %33 = load %struct.btrfs_root*, %struct.btrfs_root** %3, align 8
  %34 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %33, i32 0, i32 4
  %35 = call i32 @spin_lock(i32* %34)
  %36 = load %struct.btrfs_root*, %struct.btrfs_root** %3, align 8
  %37 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @BTRFS_CACHE_FINISHED, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %48

41:                                               ; preds = %29
  %42 = load %struct.btrfs_root*, %struct.btrfs_root** %3, align 8
  %43 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %42, i32 0, i32 4
  %44 = call i32 @spin_unlock(i32* %43)
  %45 = load %struct.btrfs_root*, %struct.btrfs_root** %3, align 8
  %46 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %45, i32 0, i32 3
  %47 = call i32 @mutex_unlock(i32* %46)
  br label %19

48:                                               ; preds = %29
  %49 = load %struct.btrfs_root*, %struct.btrfs_root** %3, align 8
  %50 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %49, i32 0, i32 4
  %51 = call i32 @spin_unlock(i32* %50)
  %52 = load %struct.btrfs_root*, %struct.btrfs_root** %3, align 8
  %53 = call i32 @start_caching(%struct.btrfs_root* %52)
  %54 = load i64, i64* %4, align 8
  %55 = load %struct.btrfs_root*, %struct.btrfs_root** %3, align 8
  %56 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = icmp sle i64 %54, %57
  br i1 %58, label %65, label %59

59:                                               ; preds = %48
  %60 = load i64, i64* %4, align 8
  %61 = load %struct.btrfs_root*, %struct.btrfs_root** %3, align 8
  %62 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = icmp sgt i64 %60, %63
  br i1 %64, label %65, label %69

65:                                               ; preds = %59, %48
  %66 = load %struct.btrfs_free_space_ctl*, %struct.btrfs_free_space_ctl** %5, align 8
  %67 = load i64, i64* %4, align 8
  %68 = call i32 @__btrfs_add_free_space(%struct.btrfs_free_space_ctl* %66, i64 %67, i32 1)
  br label %73

69:                                               ; preds = %59
  %70 = load %struct.btrfs_free_space_ctl*, %struct.btrfs_free_space_ctl** %6, align 8
  %71 = load i64, i64* %4, align 8
  %72 = call i32 @__btrfs_add_free_space(%struct.btrfs_free_space_ctl* %70, i64 %71, i32 1)
  br label %73

73:                                               ; preds = %69, %65
  %74 = load %struct.btrfs_root*, %struct.btrfs_root** %3, align 8
  %75 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %74, i32 0, i32 3
  %76 = call i32 @mutex_unlock(i32* %75)
  br label %77

77:                                               ; preds = %17, %73, %25
  ret void
}

declare dso_local i32 @btrfs_test_opt(%struct.btrfs_root*, i32) #1

declare dso_local i32 @__btrfs_add_free_space(%struct.btrfs_free_space_ctl*, i64, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @start_caching(%struct.btrfs_root*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
