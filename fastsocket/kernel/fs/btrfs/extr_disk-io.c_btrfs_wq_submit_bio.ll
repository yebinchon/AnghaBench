; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_disk-io.c_btrfs_wq_submit_bio.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_disk-io.c_btrfs_wq_submit_bio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_fs_info = type { i32, i32, i32, i32 }
%struct.inode = type { i32 }
%struct.bio = type { i32 }
%struct.async_submit_bio = type { i32, i32, i64, %struct.TYPE_3__, i64, i32, i32*, i32*, %struct.bio*, %struct.inode* }
%struct.TYPE_3__ = type { i64, i32, i32, i32 }

@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@run_one_async_start = common dso_local global i32 0, align 4
@run_one_async_done = common dso_local global i32 0, align 4
@run_one_async_free = common dso_local global i32 0, align 4
@REQ_SYNC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btrfs_wq_submit_bio(%struct.btrfs_fs_info* %0, %struct.inode* %1, i32 %2, %struct.bio* %3, i32 %4, i64 %5, i32 %6, i32* %7, i32* %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.btrfs_fs_info*, align 8
  %12 = alloca %struct.inode*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.bio*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca %struct.async_submit_bio*, align 8
  store %struct.btrfs_fs_info* %0, %struct.btrfs_fs_info** %11, align 8
  store %struct.inode* %1, %struct.inode** %12, align 8
  store i32 %2, i32* %13, align 4
  store %struct.bio* %3, %struct.bio** %14, align 8
  store i32 %4, i32* %15, align 4
  store i64 %5, i64* %16, align 8
  store i32 %6, i32* %17, align 4
  store i32* %7, i32** %18, align 8
  store i32* %8, i32** %19, align 8
  %21 = load i32, i32* @GFP_NOFS, align 4
  %22 = call %struct.async_submit_bio* @kmalloc(i32 88, i32 %21)
  store %struct.async_submit_bio* %22, %struct.async_submit_bio** %20, align 8
  %23 = load %struct.async_submit_bio*, %struct.async_submit_bio** %20, align 8
  %24 = icmp ne %struct.async_submit_bio* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %9
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %10, align 4
  br label %110

28:                                               ; preds = %9
  %29 = load %struct.inode*, %struct.inode** %12, align 8
  %30 = load %struct.async_submit_bio*, %struct.async_submit_bio** %20, align 8
  %31 = getelementptr inbounds %struct.async_submit_bio, %struct.async_submit_bio* %30, i32 0, i32 9
  store %struct.inode* %29, %struct.inode** %31, align 8
  %32 = load i32, i32* %13, align 4
  %33 = load %struct.async_submit_bio*, %struct.async_submit_bio** %20, align 8
  %34 = getelementptr inbounds %struct.async_submit_bio, %struct.async_submit_bio* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  %35 = load %struct.bio*, %struct.bio** %14, align 8
  %36 = load %struct.async_submit_bio*, %struct.async_submit_bio** %20, align 8
  %37 = getelementptr inbounds %struct.async_submit_bio, %struct.async_submit_bio* %36, i32 0, i32 8
  store %struct.bio* %35, %struct.bio** %37, align 8
  %38 = load i32, i32* %15, align 4
  %39 = load %struct.async_submit_bio*, %struct.async_submit_bio** %20, align 8
  %40 = getelementptr inbounds %struct.async_submit_bio, %struct.async_submit_bio* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  %41 = load i32*, i32** %18, align 8
  %42 = load %struct.async_submit_bio*, %struct.async_submit_bio** %20, align 8
  %43 = getelementptr inbounds %struct.async_submit_bio, %struct.async_submit_bio* %42, i32 0, i32 7
  store i32* %41, i32** %43, align 8
  %44 = load i32*, i32** %19, align 8
  %45 = load %struct.async_submit_bio*, %struct.async_submit_bio** %20, align 8
  %46 = getelementptr inbounds %struct.async_submit_bio, %struct.async_submit_bio* %45, i32 0, i32 6
  store i32* %44, i32** %46, align 8
  %47 = load i32, i32* @run_one_async_start, align 4
  %48 = load %struct.async_submit_bio*, %struct.async_submit_bio** %20, align 8
  %49 = getelementptr inbounds %struct.async_submit_bio, %struct.async_submit_bio* %48, i32 0, i32 3
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 3
  store i32 %47, i32* %50, align 8
  %51 = load i32, i32* @run_one_async_done, align 4
  %52 = load %struct.async_submit_bio*, %struct.async_submit_bio** %20, align 8
  %53 = getelementptr inbounds %struct.async_submit_bio, %struct.async_submit_bio* %52, i32 0, i32 3
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 2
  store i32 %51, i32* %54, align 4
  %55 = load i32, i32* @run_one_async_free, align 4
  %56 = load %struct.async_submit_bio*, %struct.async_submit_bio** %20, align 8
  %57 = getelementptr inbounds %struct.async_submit_bio, %struct.async_submit_bio* %56, i32 0, i32 3
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 1
  store i32 %55, i32* %58, align 8
  %59 = load %struct.async_submit_bio*, %struct.async_submit_bio** %20, align 8
  %60 = getelementptr inbounds %struct.async_submit_bio, %struct.async_submit_bio* %59, i32 0, i32 3
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  store i64 0, i64* %61, align 8
  %62 = load i64, i64* %16, align 8
  %63 = load %struct.async_submit_bio*, %struct.async_submit_bio** %20, align 8
  %64 = getelementptr inbounds %struct.async_submit_bio, %struct.async_submit_bio* %63, i32 0, i32 2
  store i64 %62, i64* %64, align 8
  %65 = load i32, i32* %17, align 4
  %66 = load %struct.async_submit_bio*, %struct.async_submit_bio** %20, align 8
  %67 = getelementptr inbounds %struct.async_submit_bio, %struct.async_submit_bio* %66, i32 0, i32 5
  store i32 %65, i32* %67, align 8
  %68 = load %struct.async_submit_bio*, %struct.async_submit_bio** %20, align 8
  %69 = getelementptr inbounds %struct.async_submit_bio, %struct.async_submit_bio* %68, i32 0, i32 4
  store i64 0, i64* %69, align 8
  %70 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %11, align 8
  %71 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %70, i32 0, i32 0
  %72 = call i32 @atomic_inc(i32* %71)
  %73 = load i32, i32* %13, align 4
  %74 = load i32, i32* @REQ_SYNC, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %28
  %78 = load %struct.async_submit_bio*, %struct.async_submit_bio** %20, align 8
  %79 = getelementptr inbounds %struct.async_submit_bio, %struct.async_submit_bio* %78, i32 0, i32 3
  %80 = call i32 @btrfs_set_work_high_prio(%struct.TYPE_3__* %79)
  br label %81

81:                                               ; preds = %77, %28
  %82 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %11, align 8
  %83 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %82, i32 0, i32 3
  %84 = load %struct.async_submit_bio*, %struct.async_submit_bio** %20, align 8
  %85 = getelementptr inbounds %struct.async_submit_bio, %struct.async_submit_bio* %84, i32 0, i32 3
  %86 = call i32 @btrfs_queue_worker(i32* %83, %struct.TYPE_3__* %85)
  br label %87

87:                                               ; preds = %99, %81
  %88 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %11, align 8
  %89 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %88, i32 0, i32 2
  %90 = call i64 @atomic_read(i32* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %97

92:                                               ; preds = %87
  %93 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %11, align 8
  %94 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %93, i32 0, i32 0
  %95 = call i64 @atomic_read(i32* %94)
  %96 = icmp ne i64 %95, 0
  br label %97

97:                                               ; preds = %92, %87
  %98 = phi i1 [ false, %87 ], [ %96, %92 ]
  br i1 %98, label %99, label %109

99:                                               ; preds = %97
  %100 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %11, align 8
  %101 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %11, align 8
  %104 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %103, i32 0, i32 0
  %105 = call i64 @atomic_read(i32* %104)
  %106 = icmp eq i64 %105, 0
  %107 = zext i1 %106 to i32
  %108 = call i32 @wait_event(i32 %102, i32 %107)
  br label %87

109:                                              ; preds = %97
  store i32 0, i32* %10, align 4
  br label %110

110:                                              ; preds = %109, %25
  %111 = load i32, i32* %10, align 4
  ret i32 %111
}

declare dso_local %struct.async_submit_bio* @kmalloc(i32, i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @btrfs_set_work_high_prio(%struct.TYPE_3__*) #1

declare dso_local i32 @btrfs_queue_worker(i32*, %struct.TYPE_3__*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @wait_event(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
