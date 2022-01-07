; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_write.c_nfs_write_inode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_write.c_nfs_write_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.writeback_control = type { i64, i64, i64 }
%struct.TYPE_2__ = type { i32 }

@NFS_INO_LAYOUTCOMMIT = common dso_local global i32 0, align 4
@WB_SYNC_NONE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs_write_inode(%struct.inode* %0, %struct.writeback_control* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.writeback_control*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.writeback_control* %1, %struct.writeback_control** %5, align 8
  %9 = load %struct.inode*, %struct.inode** %4, align 8
  %10 = load %struct.writeback_control*, %struct.writeback_control** %5, align 8
  %11 = call i32 @nfs_commit_unstable_pages(%struct.inode* %9, %struct.writeback_control* %10)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp sge i32 %12, 0
  br i1 %13, label %14, label %47

14:                                               ; preds = %2
  %15 = load i32, i32* @NFS_INO_LAYOUTCOMMIT, align 4
  %16 = load %struct.inode*, %struct.inode** %4, align 8
  %17 = call %struct.TYPE_2__* @NFS_I(%struct.inode* %16)
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = call i64 @test_bit(i32 %15, i32* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %47

21:                                               ; preds = %14
  store i32 1, i32* %8, align 4
  %22 = load %struct.writeback_control*, %struct.writeback_control** %5, align 8
  %23 = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @WB_SYNC_NONE, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %37, label %27

27:                                               ; preds = %21
  %28 = load %struct.writeback_control*, %struct.writeback_control** %5, align 8
  %29 = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %27
  %33 = load %struct.writeback_control*, %struct.writeback_control** %5, align 8
  %34 = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %32, %27, %21
  store i32 0, i32* %8, align 4
  br label %38

38:                                               ; preds = %37, %32
  %39 = load %struct.inode*, %struct.inode** %4, align 8
  %40 = load i32, i32* %8, align 4
  %41 = call i32 @pnfs_layoutcommit_inode(%struct.inode* %39, i32 %40)
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %38
  %45 = load i32, i32* %7, align 4
  store i32 %45, i32* %3, align 4
  br label %49

46:                                               ; preds = %38
  br label %47

47:                                               ; preds = %46, %14, %2
  %48 = load i32, i32* %6, align 4
  store i32 %48, i32* %3, align 4
  br label %49

49:                                               ; preds = %47, %44
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i32 @nfs_commit_unstable_pages(%struct.inode*, %struct.writeback_control*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local %struct.TYPE_2__* @NFS_I(%struct.inode*) #1

declare dso_local i32 @pnfs_layoutcommit_inode(%struct.inode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
