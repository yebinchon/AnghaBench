; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs3proc.c_nfs3_proc_unlink_done.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs3proc.c_nfs3_proc_unlink_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_task = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.nfs_removeres* }
%struct.nfs_removeres = type { i32 }
%struct.inode = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rpc_task*, %struct.inode*)* @nfs3_proc_unlink_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs3_proc_unlink_done(%struct.rpc_task* %0, %struct.inode* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rpc_task*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.nfs_removeres*, align 8
  store %struct.rpc_task* %0, %struct.rpc_task** %4, align 8
  store %struct.inode* %1, %struct.inode** %5, align 8
  %7 = load %struct.rpc_task*, %struct.rpc_task** %4, align 8
  %8 = load %struct.inode*, %struct.inode** %5, align 8
  %9 = call i64 @nfs3_async_handle_jukebox(%struct.rpc_task* %7, %struct.inode* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %22

12:                                               ; preds = %2
  %13 = load %struct.rpc_task*, %struct.rpc_task** %4, align 8
  %14 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load %struct.nfs_removeres*, %struct.nfs_removeres** %15, align 8
  store %struct.nfs_removeres* %16, %struct.nfs_removeres** %6, align 8
  %17 = load %struct.inode*, %struct.inode** %5, align 8
  %18 = load %struct.nfs_removeres*, %struct.nfs_removeres** %6, align 8
  %19 = getelementptr inbounds %struct.nfs_removeres, %struct.nfs_removeres* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @nfs_post_op_update_inode(%struct.inode* %17, i32 %20)
  store i32 1, i32* %3, align 4
  br label %22

22:                                               ; preds = %12, %11
  %23 = load i32, i32* %3, align 4
  ret i32 %23
}

declare dso_local i64 @nfs3_async_handle_jukebox(%struct.rpc_task*, %struct.inode*) #1

declare dso_local i32 @nfs_post_op_update_inode(%struct.inode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
