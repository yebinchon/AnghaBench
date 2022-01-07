; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_inode.c_btrfs_orphan_commit_root.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_inode.c_btrfs_orphan_commit_root.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_trans_handle = type { i32 }
%struct.btrfs_root = type { i64, i64, %struct.TYPE_4__, %struct.TYPE_3__*, i32, i32, %struct.btrfs_block_rsv*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.btrfs_block_rsv = type { i64 }

@ORPHAN_CLEANUP_DONE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @btrfs_orphan_commit_root(%struct.btrfs_trans_handle* %0, %struct.btrfs_root* %1) #0 {
  %3 = alloca %struct.btrfs_trans_handle*, align 8
  %4 = alloca %struct.btrfs_root*, align 8
  %5 = alloca %struct.btrfs_block_rsv*, align 8
  %6 = alloca i32, align 4
  store %struct.btrfs_trans_handle* %0, %struct.btrfs_trans_handle** %3, align 8
  store %struct.btrfs_root* %1, %struct.btrfs_root** %4, align 8
  %7 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %8 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %7, i32 0, i32 7
  %9 = call i64 @atomic_read(i32* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %17, label %11

11:                                               ; preds = %2
  %12 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %13 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @ORPHAN_CLEANUP_DONE, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %11, %2
  br label %87

18:                                               ; preds = %11
  %19 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %20 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %19, i32 0, i32 5
  %21 = call i32 @spin_lock(i32* %20)
  %22 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %23 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %22, i32 0, i32 7
  %24 = call i64 @atomic_read(i32* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %18
  %27 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %28 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %27, i32 0, i32 5
  %29 = call i32 @spin_unlock(i32* %28)
  br label %87

30:                                               ; preds = %18
  %31 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %32 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @ORPHAN_CLEANUP_DONE, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %30
  %37 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %38 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %37, i32 0, i32 5
  %39 = call i32 @spin_unlock(i32* %38)
  br label %87

40:                                               ; preds = %30
  %41 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %42 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %41, i32 0, i32 6
  %43 = load %struct.btrfs_block_rsv*, %struct.btrfs_block_rsv** %42, align 8
  store %struct.btrfs_block_rsv* %43, %struct.btrfs_block_rsv** %5, align 8
  %44 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %45 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %44, i32 0, i32 6
  store %struct.btrfs_block_rsv* null, %struct.btrfs_block_rsv** %45, align 8
  %46 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %47 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %46, i32 0, i32 5
  %48 = call i32 @spin_unlock(i32* %47)
  %49 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %50 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %74

53:                                               ; preds = %40
  %54 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %55 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %54, i32 0, i32 4
  %56 = call i64 @btrfs_root_refs(i32* %55)
  %57 = icmp sgt i64 %56, 0
  br i1 %57, label %58, label %74

58:                                               ; preds = %53
  %59 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %3, align 8
  %60 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %61 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %60, i32 0, i32 3
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %66 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @btrfs_del_orphan_item(%struct.btrfs_trans_handle* %59, i32 %64, i32 %68)
  store i32 %69, i32* %6, align 4
  %70 = load i32, i32* %6, align 4
  %71 = call i32 @BUG_ON(i32 %70)
  %72 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %73 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %72, i32 0, i32 1
  store i64 0, i64* %73, align 8
  br label %74

74:                                               ; preds = %58, %53, %40
  %75 = load %struct.btrfs_block_rsv*, %struct.btrfs_block_rsv** %5, align 8
  %76 = icmp ne %struct.btrfs_block_rsv* %75, null
  br i1 %76, label %77, label %87

77:                                               ; preds = %74
  %78 = load %struct.btrfs_block_rsv*, %struct.btrfs_block_rsv** %5, align 8
  %79 = getelementptr inbounds %struct.btrfs_block_rsv, %struct.btrfs_block_rsv* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = icmp sgt i64 %80, 0
  %82 = zext i1 %81 to i32
  %83 = call i32 @WARN_ON(i32 %82)
  %84 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %85 = load %struct.btrfs_block_rsv*, %struct.btrfs_block_rsv** %5, align 8
  %86 = call i32 @btrfs_free_block_rsv(%struct.btrfs_root* %84, %struct.btrfs_block_rsv* %85)
  br label %87

87:                                               ; preds = %17, %26, %36, %77, %74
  ret void
}

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i64 @btrfs_root_refs(i32*) #1

declare dso_local i32 @btrfs_del_orphan_item(%struct.btrfs_trans_handle*, i32, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @btrfs_free_block_rsv(%struct.btrfs_root*, %struct.btrfs_block_rsv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
