; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4proc.c_nfs4_proc_unlink_done.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4proc.c_nfs4_proc_unlink_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_task = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.nfs_removeres* }
%struct.nfs_removeres = type { i32, i32, i32 }
%struct.inode = type { i32 }

@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rpc_task*, %struct.inode*)* @nfs4_proc_unlink_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs4_proc_unlink_done(%struct.rpc_task* %0, %struct.inode* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rpc_task*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.nfs_removeres*, align 8
  store %struct.rpc_task* %0, %struct.rpc_task** %4, align 8
  store %struct.inode* %1, %struct.inode** %5, align 8
  %7 = load %struct.rpc_task*, %struct.rpc_task** %4, align 8
  %8 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.nfs_removeres*, %struct.nfs_removeres** %9, align 8
  store %struct.nfs_removeres* %10, %struct.nfs_removeres** %6, align 8
  %11 = load %struct.rpc_task*, %struct.rpc_task** %4, align 8
  %12 = load %struct.nfs_removeres*, %struct.nfs_removeres** %6, align 8
  %13 = getelementptr inbounds %struct.nfs_removeres, %struct.nfs_removeres* %12, i32 0, i32 2
  %14 = call i32 @nfs4_sequence_done(%struct.rpc_task* %11, i32* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %32

17:                                               ; preds = %2
  %18 = load %struct.rpc_task*, %struct.rpc_task** %4, align 8
  %19 = load %struct.nfs_removeres*, %struct.nfs_removeres** %6, align 8
  %20 = getelementptr inbounds %struct.nfs_removeres, %struct.nfs_removeres* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @nfs4_async_handle_error(%struct.rpc_task* %18, i32 %21, i32* null)
  %23 = load i32, i32* @EAGAIN, align 4
  %24 = sub nsw i32 0, %23
  %25 = icmp eq i32 %22, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %17
  store i32 0, i32* %3, align 4
  br label %32

27:                                               ; preds = %17
  %28 = load %struct.inode*, %struct.inode** %5, align 8
  %29 = load %struct.nfs_removeres*, %struct.nfs_removeres** %6, align 8
  %30 = getelementptr inbounds %struct.nfs_removeres, %struct.nfs_removeres* %29, i32 0, i32 0
  %31 = call i32 @update_changeattr(%struct.inode* %28, i32* %30)
  store i32 1, i32* %3, align 4
  br label %32

32:                                               ; preds = %27, %26, %16
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local i32 @nfs4_sequence_done(%struct.rpc_task*, i32*) #1

declare dso_local i32 @nfs4_async_handle_error(%struct.rpc_task*, i32, i32*) #1

declare dso_local i32 @update_changeattr(%struct.inode*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
