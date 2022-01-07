; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_write.c_nfs_end_page_writeback.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_write.c_nfs_end_page_writeback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.nfs_server = type { i32, i32 }

@NFS_CONGESTION_OFF_THRESH = common dso_local global i64 0, align 8
@BLK_RW_ASYNC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.page*)* @nfs_end_page_writeback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfs_end_page_writeback(%struct.page* %0) #0 {
  %2 = alloca %struct.page*, align 8
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.nfs_server*, align 8
  store %struct.page* %0, %struct.page** %2, align 8
  %5 = load %struct.page*, %struct.page** %2, align 8
  %6 = getelementptr inbounds %struct.page, %struct.page* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load %struct.inode*, %struct.inode** %8, align 8
  store %struct.inode* %9, %struct.inode** %3, align 8
  %10 = load %struct.inode*, %struct.inode** %3, align 8
  %11 = call %struct.nfs_server* @NFS_SERVER(%struct.inode* %10)
  store %struct.nfs_server* %11, %struct.nfs_server** %4, align 8
  %12 = load %struct.page*, %struct.page** %2, align 8
  %13 = call i32 @end_page_writeback(%struct.page* %12)
  %14 = load %struct.nfs_server*, %struct.nfs_server** %4, align 8
  %15 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %14, i32 0, i32 1
  %16 = call i64 @atomic_long_dec_return(i32* %15)
  %17 = load i64, i64* @NFS_CONGESTION_OFF_THRESH, align 8
  %18 = icmp slt i64 %16, %17
  br i1 %18, label %19, label %24

19:                                               ; preds = %1
  %20 = load %struct.nfs_server*, %struct.nfs_server** %4, align 8
  %21 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %20, i32 0, i32 0
  %22 = load i32, i32* @BLK_RW_ASYNC, align 4
  %23 = call i32 @clear_bdi_congested(i32* %21, i32 %22)
  br label %24

24:                                               ; preds = %19, %1
  ret void
}

declare dso_local %struct.nfs_server* @NFS_SERVER(%struct.inode*) #1

declare dso_local i32 @end_page_writeback(%struct.page*) #1

declare dso_local i64 @atomic_long_dec_return(i32*) #1

declare dso_local i32 @clear_bdi_congested(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
