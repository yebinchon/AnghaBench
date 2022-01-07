; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_write.c_nfs_do_writepage.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_write.c_nfs_do_writepage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.writeback_control = type { i64, i64 }
%struct.nfs_pageio_descriptor = type { i32 }

@NFSIOS_VFSWRITEPAGE = common dso_local global i32 0, align 4
@NFSIOS_WRITEPAGES = common dso_local global i32 0, align 4
@WB_SYNC_NONE = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.page*, %struct.writeback_control*, %struct.nfs_pageio_descriptor*)* @nfs_do_writepage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs_do_writepage(%struct.page* %0, %struct.writeback_control* %1, %struct.nfs_pageio_descriptor* %2) #0 {
  %4 = alloca %struct.page*, align 8
  %5 = alloca %struct.writeback_control*, align 8
  %6 = alloca %struct.nfs_pageio_descriptor*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca i32, align 4
  store %struct.page* %0, %struct.page** %4, align 8
  store %struct.writeback_control* %1, %struct.writeback_control** %5, align 8
  store %struct.nfs_pageio_descriptor* %2, %struct.nfs_pageio_descriptor** %6, align 8
  %9 = load %struct.page*, %struct.page** %4, align 8
  %10 = getelementptr inbounds %struct.page, %struct.page* %9, i32 0, i32 1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.inode*, %struct.inode** %12, align 8
  store %struct.inode* %13, %struct.inode** %7, align 8
  %14 = load %struct.inode*, %struct.inode** %7, align 8
  %15 = load i32, i32* @NFSIOS_VFSWRITEPAGE, align 4
  %16 = call i32 @nfs_inc_stats(%struct.inode* %14, i32 %15)
  %17 = load %struct.inode*, %struct.inode** %7, align 8
  %18 = load i32, i32* @NFSIOS_WRITEPAGES, align 4
  %19 = call i32 @nfs_add_stats(%struct.inode* %17, i32 %18, i32 1)
  %20 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %6, align 8
  %21 = load %struct.page*, %struct.page** %4, align 8
  %22 = getelementptr inbounds %struct.page, %struct.page* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @nfs_pageio_cond_complete(%struct.nfs_pageio_descriptor* %20, i32 %23)
  %25 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %6, align 8
  %26 = load %struct.page*, %struct.page** %4, align 8
  %27 = load %struct.writeback_control*, %struct.writeback_control** %5, align 8
  %28 = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @WB_SYNC_NONE, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %37, label %32

32:                                               ; preds = %3
  %33 = load %struct.writeback_control*, %struct.writeback_control** %5, align 8
  %34 = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br label %37

37:                                               ; preds = %32, %3
  %38 = phi i1 [ true, %3 ], [ %36, %32 ]
  %39 = zext i1 %38 to i32
  %40 = call i32 @nfs_page_async_flush(%struct.nfs_pageio_descriptor* %25, %struct.page* %26, i32 %39)
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* @EAGAIN, align 4
  %43 = sub nsw i32 0, %42
  %44 = icmp eq i32 %41, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %37
  %46 = load %struct.writeback_control*, %struct.writeback_control** %5, align 8
  %47 = load %struct.page*, %struct.page** %4, align 8
  %48 = call i32 @redirty_page_for_writepage(%struct.writeback_control* %46, %struct.page* %47)
  store i32 0, i32* %8, align 4
  br label %49

49:                                               ; preds = %45, %37
  %50 = load i32, i32* %8, align 4
  ret i32 %50
}

declare dso_local i32 @nfs_inc_stats(%struct.inode*, i32) #1

declare dso_local i32 @nfs_add_stats(%struct.inode*, i32, i32) #1

declare dso_local i32 @nfs_pageio_cond_complete(%struct.nfs_pageio_descriptor*, i32) #1

declare dso_local i32 @nfs_page_async_flush(%struct.nfs_pageio_descriptor*, %struct.page*, i32) #1

declare dso_local i32 @redirty_page_for_writepage(%struct.writeback_control*, %struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
