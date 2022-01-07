; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_write.c_nfs_set_page_writeback.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_write.c_nfs_set_page_writeback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.nfs_server = type { i32, i32 }

@NFS_CONGESTION_ON_THRESH = common dso_local global i64 0, align 8
@BLK_RW_ASYNC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.page*)* @nfs_set_page_writeback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs_set_page_writeback(%struct.page* %0) #0 {
  %2 = alloca %struct.page*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.nfs_server*, align 8
  store %struct.page* %0, %struct.page** %2, align 8
  %6 = load %struct.page*, %struct.page** %2, align 8
  %7 = call i32 @test_set_page_writeback(%struct.page* %6)
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %29, label %10

10:                                               ; preds = %1
  %11 = load %struct.page*, %struct.page** %2, align 8
  %12 = getelementptr inbounds %struct.page, %struct.page* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.inode*, %struct.inode** %14, align 8
  store %struct.inode* %15, %struct.inode** %4, align 8
  %16 = load %struct.inode*, %struct.inode** %4, align 8
  %17 = call %struct.nfs_server* @NFS_SERVER(%struct.inode* %16)
  store %struct.nfs_server* %17, %struct.nfs_server** %5, align 8
  %18 = load %struct.nfs_server*, %struct.nfs_server** %5, align 8
  %19 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %18, i32 0, i32 1
  %20 = call i64 @atomic_long_inc_return(i32* %19)
  %21 = load i64, i64* @NFS_CONGESTION_ON_THRESH, align 8
  %22 = icmp sgt i64 %20, %21
  br i1 %22, label %23, label %28

23:                                               ; preds = %10
  %24 = load %struct.nfs_server*, %struct.nfs_server** %5, align 8
  %25 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %24, i32 0, i32 0
  %26 = load i32, i32* @BLK_RW_ASYNC, align 4
  %27 = call i32 @set_bdi_congested(i32* %25, i32 %26)
  br label %28

28:                                               ; preds = %23, %10
  br label %29

29:                                               ; preds = %28, %1
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local i32 @test_set_page_writeback(%struct.page*) #1

declare dso_local %struct.nfs_server* @NFS_SERVER(%struct.inode*) #1

declare dso_local i64 @atomic_long_inc_return(i32*) #1

declare dso_local i32 @set_bdi_congested(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
