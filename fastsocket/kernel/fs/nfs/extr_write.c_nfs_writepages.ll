; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_write.c_nfs_writepages.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_write.c_nfs_writepages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.address_space = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.writeback_control = type { i32 }
%struct.nfs_pageio_descriptor = type { i32 }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32 (%struct.nfs_pageio_descriptor*, %struct.inode*, i32, i32*)* }

@NFS_INO_FLUSHING = common dso_local global i32 0, align 4
@nfs_wait_bit_killable = common dso_local global i32 0, align 4
@TASK_KILLABLE = common dso_local global i32 0, align 4
@NFSIOS_VFSWRITEPAGES = common dso_local global i32 0, align 4
@nfs_async_write_completion_ops = common dso_local global i32 0, align 4
@nfs_writepages_callback = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs_writepages(%struct.address_space* %0, %struct.writeback_control* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.address_space*, align 8
  %5 = alloca %struct.writeback_control*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.nfs_pageio_descriptor, align 4
  %9 = alloca i32, align 4
  store %struct.address_space* %0, %struct.address_space** %4, align 8
  store %struct.writeback_control* %1, %struct.writeback_control** %5, align 8
  %10 = load %struct.address_space*, %struct.address_space** %4, align 8
  %11 = getelementptr inbounds %struct.address_space, %struct.address_space* %10, i32 0, i32 0
  %12 = load %struct.inode*, %struct.inode** %11, align 8
  store %struct.inode* %12, %struct.inode** %6, align 8
  %13 = load %struct.inode*, %struct.inode** %6, align 8
  %14 = call %struct.TYPE_4__* @NFS_I(%struct.inode* %13)
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  store i64* %15, i64** %7, align 8
  %16 = load i64*, i64** %7, align 8
  %17 = load i32, i32* @NFS_INO_FLUSHING, align 4
  %18 = load i32, i32* @nfs_wait_bit_killable, align 4
  %19 = load i32, i32* @TASK_KILLABLE, align 4
  %20 = call i32 @wait_on_bit_lock(i64* %16, i32 %17, i32 %18, i32 %19)
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %2
  br label %58

24:                                               ; preds = %2
  %25 = load %struct.inode*, %struct.inode** %6, align 8
  %26 = load i32, i32* @NFSIOS_VFSWRITEPAGES, align 4
  %27 = call i32 @nfs_inc_stats(%struct.inode* %25, i32 %26)
  %28 = load %struct.inode*, %struct.inode** %6, align 8
  %29 = call %struct.TYPE_3__* @NFS_PROTO(%struct.inode* %28)
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32 (%struct.nfs_pageio_descriptor*, %struct.inode*, i32, i32*)*, i32 (%struct.nfs_pageio_descriptor*, %struct.inode*, i32, i32*)** %30, align 8
  %32 = load %struct.inode*, %struct.inode** %6, align 8
  %33 = load %struct.writeback_control*, %struct.writeback_control** %5, align 8
  %34 = call i32 @wb_priority(%struct.writeback_control* %33)
  %35 = call i32 %31(%struct.nfs_pageio_descriptor* %8, %struct.inode* %32, i32 %34, i32* @nfs_async_write_completion_ops)
  %36 = load %struct.address_space*, %struct.address_space** %4, align 8
  %37 = load %struct.writeback_control*, %struct.writeback_control** %5, align 8
  %38 = load i32, i32* @nfs_writepages_callback, align 4
  %39 = call i32 @write_cache_pages(%struct.address_space* %36, %struct.writeback_control* %37, i32 %38, %struct.nfs_pageio_descriptor* %8)
  store i32 %39, i32* %9, align 4
  %40 = call i32 @nfs_pageio_complete(%struct.nfs_pageio_descriptor* %8)
  %41 = load i32, i32* @NFS_INO_FLUSHING, align 4
  %42 = load i64*, i64** %7, align 8
  %43 = call i32 @clear_bit_unlock(i32 %41, i64* %42)
  %44 = call i32 (...) @smp_mb__after_clear_bit()
  %45 = load i64*, i64** %7, align 8
  %46 = load i32, i32* @NFS_INO_FLUSHING, align 4
  %47 = call i32 @wake_up_bit(i64* %45, i32 %46)
  %48 = load i32, i32* %9, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %24
  br label %58

51:                                               ; preds = %24
  %52 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %8, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %9, align 4
  %54 = load i32, i32* %9, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %51
  br label %58

57:                                               ; preds = %51
  store i32 0, i32* %3, align 4
  br label %60

58:                                               ; preds = %56, %50, %23
  %59 = load i32, i32* %9, align 4
  store i32 %59, i32* %3, align 4
  br label %60

60:                                               ; preds = %58, %57
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local %struct.TYPE_4__* @NFS_I(%struct.inode*) #1

declare dso_local i32 @wait_on_bit_lock(i64*, i32, i32, i32) #1

declare dso_local i32 @nfs_inc_stats(%struct.inode*, i32) #1

declare dso_local %struct.TYPE_3__* @NFS_PROTO(%struct.inode*) #1

declare dso_local i32 @wb_priority(%struct.writeback_control*) #1

declare dso_local i32 @write_cache_pages(%struct.address_space*, %struct.writeback_control*, i32, %struct.nfs_pageio_descriptor*) #1

declare dso_local i32 @nfs_pageio_complete(%struct.nfs_pageio_descriptor*) #1

declare dso_local i32 @clear_bit_unlock(i32, i64*) #1

declare dso_local i32 @smp_mb__after_clear_bit(...) #1

declare dso_local i32 @wake_up_bit(i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
