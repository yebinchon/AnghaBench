; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_pnfs.c_pnfs_pageio_init_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_pnfs.c_pnfs_pageio_init_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_pageio_descriptor = type { i32 }
%struct.inode = type { i32 }
%struct.nfs_pgio_completion_ops = type { i32 }
%struct.nfs_server = type { i32, %struct.pnfs_layoutdriver_type* }
%struct.pnfs_layoutdriver_type = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pnfs_pageio_init_read(%struct.nfs_pageio_descriptor* %0, %struct.inode* %1, %struct.nfs_pgio_completion_ops* %2) #0 {
  %4 = alloca %struct.nfs_pageio_descriptor*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.nfs_pgio_completion_ops*, align 8
  %7 = alloca %struct.nfs_server*, align 8
  %8 = alloca %struct.pnfs_layoutdriver_type*, align 8
  store %struct.nfs_pageio_descriptor* %0, %struct.nfs_pageio_descriptor** %4, align 8
  store %struct.inode* %1, %struct.inode** %5, align 8
  store %struct.nfs_pgio_completion_ops* %2, %struct.nfs_pgio_completion_ops** %6, align 8
  %9 = load %struct.inode*, %struct.inode** %5, align 8
  %10 = call %struct.nfs_server* @NFS_SERVER(%struct.inode* %9)
  store %struct.nfs_server* %10, %struct.nfs_server** %7, align 8
  %11 = load %struct.nfs_server*, %struct.nfs_server** %7, align 8
  %12 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %11, i32 0, i32 1
  %13 = load %struct.pnfs_layoutdriver_type*, %struct.pnfs_layoutdriver_type** %12, align 8
  store %struct.pnfs_layoutdriver_type* %13, %struct.pnfs_layoutdriver_type** %8, align 8
  %14 = load %struct.pnfs_layoutdriver_type*, %struct.pnfs_layoutdriver_type** %8, align 8
  %15 = icmp eq %struct.pnfs_layoutdriver_type* %14, null
  br i1 %15, label %16, label %21

16:                                               ; preds = %3
  %17 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %4, align 8
  %18 = load %struct.inode*, %struct.inode** %5, align 8
  %19 = load %struct.nfs_pgio_completion_ops*, %struct.nfs_pgio_completion_ops** %6, align 8
  %20 = call i32 @nfs_pageio_init_read(%struct.nfs_pageio_descriptor* %17, %struct.inode* %18, %struct.nfs_pgio_completion_ops* %19)
  br label %32

21:                                               ; preds = %3
  %22 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %4, align 8
  %23 = load %struct.inode*, %struct.inode** %5, align 8
  %24 = load %struct.pnfs_layoutdriver_type*, %struct.pnfs_layoutdriver_type** %8, align 8
  %25 = getelementptr inbounds %struct.pnfs_layoutdriver_type, %struct.pnfs_layoutdriver_type* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.nfs_pgio_completion_ops*, %struct.nfs_pgio_completion_ops** %6, align 8
  %28 = load %struct.nfs_server*, %struct.nfs_server** %7, align 8
  %29 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @nfs_pageio_init(%struct.nfs_pageio_descriptor* %22, %struct.inode* %23, i32 %26, %struct.nfs_pgio_completion_ops* %27, i32 %30, i32 0)
  br label %32

32:                                               ; preds = %21, %16
  ret void
}

declare dso_local %struct.nfs_server* @NFS_SERVER(%struct.inode*) #1

declare dso_local i32 @nfs_pageio_init_read(%struct.nfs_pageio_descriptor*, %struct.inode*, %struct.nfs_pgio_completion_ops*) #1

declare dso_local i32 @nfs_pageio_init(%struct.nfs_pageio_descriptor*, %struct.inode*, i32, %struct.nfs_pgio_completion_ops*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
