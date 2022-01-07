; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_pnfs.c_pnfs_pageio_init_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_pnfs.c_pnfs_pageio_init_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_pageio_descriptor = type { i32 }
%struct.inode = type { i32 }
%struct.nfs_pgio_completion_ops = type { i32 }
%struct.nfs_server = type { i32, %struct.pnfs_layoutdriver_type* }
%struct.pnfs_layoutdriver_type = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pnfs_pageio_init_write(%struct.nfs_pageio_descriptor* %0, %struct.inode* %1, i32 %2, %struct.nfs_pgio_completion_ops* %3) #0 {
  %5 = alloca %struct.nfs_pageio_descriptor*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.nfs_pgio_completion_ops*, align 8
  %9 = alloca %struct.nfs_server*, align 8
  %10 = alloca %struct.pnfs_layoutdriver_type*, align 8
  store %struct.nfs_pageio_descriptor* %0, %struct.nfs_pageio_descriptor** %5, align 8
  store %struct.inode* %1, %struct.inode** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.nfs_pgio_completion_ops* %3, %struct.nfs_pgio_completion_ops** %8, align 8
  %11 = load %struct.inode*, %struct.inode** %6, align 8
  %12 = call %struct.nfs_server* @NFS_SERVER(%struct.inode* %11)
  store %struct.nfs_server* %12, %struct.nfs_server** %9, align 8
  %13 = load %struct.nfs_server*, %struct.nfs_server** %9, align 8
  %14 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %13, i32 0, i32 1
  %15 = load %struct.pnfs_layoutdriver_type*, %struct.pnfs_layoutdriver_type** %14, align 8
  store %struct.pnfs_layoutdriver_type* %15, %struct.pnfs_layoutdriver_type** %10, align 8
  %16 = load %struct.pnfs_layoutdriver_type*, %struct.pnfs_layoutdriver_type** %10, align 8
  %17 = icmp eq %struct.pnfs_layoutdriver_type* %16, null
  br i1 %17, label %18, label %24

18:                                               ; preds = %4
  %19 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %5, align 8
  %20 = load %struct.inode*, %struct.inode** %6, align 8
  %21 = load i32, i32* %7, align 4
  %22 = load %struct.nfs_pgio_completion_ops*, %struct.nfs_pgio_completion_ops** %8, align 8
  %23 = call i32 @nfs_pageio_init_write(%struct.nfs_pageio_descriptor* %19, %struct.inode* %20, i32 %21, %struct.nfs_pgio_completion_ops* %22)
  br label %36

24:                                               ; preds = %4
  %25 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %5, align 8
  %26 = load %struct.inode*, %struct.inode** %6, align 8
  %27 = load %struct.pnfs_layoutdriver_type*, %struct.pnfs_layoutdriver_type** %10, align 8
  %28 = getelementptr inbounds %struct.pnfs_layoutdriver_type, %struct.pnfs_layoutdriver_type* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.nfs_pgio_completion_ops*, %struct.nfs_pgio_completion_ops** %8, align 8
  %31 = load %struct.nfs_server*, %struct.nfs_server** %9, align 8
  %32 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @nfs_pageio_init(%struct.nfs_pageio_descriptor* %25, %struct.inode* %26, i32 %29, %struct.nfs_pgio_completion_ops* %30, i32 %33, i32 %34)
  br label %36

36:                                               ; preds = %24, %18
  ret void
}

declare dso_local %struct.nfs_server* @NFS_SERVER(%struct.inode*) #1

declare dso_local i32 @nfs_pageio_init_write(%struct.nfs_pageio_descriptor*, %struct.inode*, i32, %struct.nfs_pgio_completion_ops*) #1

declare dso_local i32 @nfs_pageio_init(%struct.nfs_pageio_descriptor*, %struct.inode*, i32, %struct.nfs_pgio_completion_ops*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
