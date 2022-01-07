; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4proc.c_nfs4_proc_rename_done.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4proc.c_nfs4_proc_rename_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_task = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.nfs_renameres* }
%struct.nfs_renameres = type { i32, i32, i32, i32 }
%struct.inode = type { i32 }

@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rpc_task*, %struct.inode*, %struct.inode*)* @nfs4_proc_rename_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs4_proc_rename_done(%struct.rpc_task* %0, %struct.inode* %1, %struct.inode* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rpc_task*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.nfs_renameres*, align 8
  store %struct.rpc_task* %0, %struct.rpc_task** %5, align 8
  store %struct.inode* %1, %struct.inode** %6, align 8
  store %struct.inode* %2, %struct.inode** %7, align 8
  %9 = load %struct.rpc_task*, %struct.rpc_task** %5, align 8
  %10 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.nfs_renameres*, %struct.nfs_renameres** %11, align 8
  store %struct.nfs_renameres* %12, %struct.nfs_renameres** %8, align 8
  %13 = load %struct.rpc_task*, %struct.rpc_task** %5, align 8
  %14 = load %struct.nfs_renameres*, %struct.nfs_renameres** %8, align 8
  %15 = getelementptr inbounds %struct.nfs_renameres, %struct.nfs_renameres* %14, i32 0, i32 3
  %16 = call i32 @nfs4_sequence_done(%struct.rpc_task* %13, i32* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %38

19:                                               ; preds = %3
  %20 = load %struct.rpc_task*, %struct.rpc_task** %5, align 8
  %21 = load %struct.nfs_renameres*, %struct.nfs_renameres** %8, align 8
  %22 = getelementptr inbounds %struct.nfs_renameres, %struct.nfs_renameres* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @nfs4_async_handle_error(%struct.rpc_task* %20, i32 %23, i32* null)
  %25 = load i32, i32* @EAGAIN, align 4
  %26 = sub nsw i32 0, %25
  %27 = icmp eq i32 %24, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %19
  store i32 0, i32* %4, align 4
  br label %38

29:                                               ; preds = %19
  %30 = load %struct.inode*, %struct.inode** %6, align 8
  %31 = load %struct.nfs_renameres*, %struct.nfs_renameres** %8, align 8
  %32 = getelementptr inbounds %struct.nfs_renameres, %struct.nfs_renameres* %31, i32 0, i32 1
  %33 = call i32 @update_changeattr(%struct.inode* %30, i32* %32)
  %34 = load %struct.inode*, %struct.inode** %7, align 8
  %35 = load %struct.nfs_renameres*, %struct.nfs_renameres** %8, align 8
  %36 = getelementptr inbounds %struct.nfs_renameres, %struct.nfs_renameres* %35, i32 0, i32 0
  %37 = call i32 @update_changeattr(%struct.inode* %34, i32* %36)
  store i32 1, i32* %4, align 4
  br label %38

38:                                               ; preds = %29, %28, %18
  %39 = load i32, i32* %4, align 4
  ret i32 %39
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
