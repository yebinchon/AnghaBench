; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs3proc.c_nfs3_proc_rename_done.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs3proc.c_nfs3_proc_rename_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_task = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.nfs_renameres* }
%struct.nfs_renameres = type { i32, i32 }
%struct.inode = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rpc_task*, %struct.inode*, %struct.inode*)* @nfs3_proc_rename_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs3_proc_rename_done(%struct.rpc_task* %0, %struct.inode* %1, %struct.inode* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rpc_task*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.nfs_renameres*, align 8
  store %struct.rpc_task* %0, %struct.rpc_task** %5, align 8
  store %struct.inode* %1, %struct.inode** %6, align 8
  store %struct.inode* %2, %struct.inode** %7, align 8
  %9 = load %struct.rpc_task*, %struct.rpc_task** %5, align 8
  %10 = load %struct.inode*, %struct.inode** %6, align 8
  %11 = call i64 @nfs3_async_handle_jukebox(%struct.rpc_task* %9, %struct.inode* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %29

14:                                               ; preds = %3
  %15 = load %struct.rpc_task*, %struct.rpc_task** %5, align 8
  %16 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load %struct.nfs_renameres*, %struct.nfs_renameres** %17, align 8
  store %struct.nfs_renameres* %18, %struct.nfs_renameres** %8, align 8
  %19 = load %struct.inode*, %struct.inode** %6, align 8
  %20 = load %struct.nfs_renameres*, %struct.nfs_renameres** %8, align 8
  %21 = getelementptr inbounds %struct.nfs_renameres, %struct.nfs_renameres* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @nfs_post_op_update_inode(%struct.inode* %19, i32 %22)
  %24 = load %struct.inode*, %struct.inode** %7, align 8
  %25 = load %struct.nfs_renameres*, %struct.nfs_renameres** %8, align 8
  %26 = getelementptr inbounds %struct.nfs_renameres, %struct.nfs_renameres* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @nfs_post_op_update_inode(%struct.inode* %24, i32 %27)
  store i32 1, i32* %4, align 4
  br label %29

29:                                               ; preds = %14, %13
  %30 = load i32, i32* %4, align 4
  ret i32 %30
}

declare dso_local i64 @nfs3_async_handle_jukebox(%struct.rpc_task*, %struct.inode*) #1

declare dso_local i32 @nfs_post_op_update_inode(%struct.inode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
