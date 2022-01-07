; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs3proc.c_nfs3_commit_done.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs3proc.c_nfs3_commit_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_task = type { i32 }
%struct.nfs_commit_data = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rpc_task*, %struct.nfs_commit_data*)* @nfs3_commit_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs3_commit_done(%struct.rpc_task* %0, %struct.nfs_commit_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rpc_task*, align 8
  %5 = alloca %struct.nfs_commit_data*, align 8
  store %struct.rpc_task* %0, %struct.rpc_task** %4, align 8
  store %struct.nfs_commit_data* %1, %struct.nfs_commit_data** %5, align 8
  %6 = load %struct.rpc_task*, %struct.rpc_task** %4, align 8
  %7 = load %struct.nfs_commit_data*, %struct.nfs_commit_data** %5, align 8
  %8 = getelementptr inbounds %struct.nfs_commit_data, %struct.nfs_commit_data* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = call i64 @nfs3_async_handle_jukebox(%struct.rpc_task* %6, i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i32, i32* @EAGAIN, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %24

15:                                               ; preds = %2
  %16 = load %struct.nfs_commit_data*, %struct.nfs_commit_data** %5, align 8
  %17 = getelementptr inbounds %struct.nfs_commit_data, %struct.nfs_commit_data* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.nfs_commit_data*, %struct.nfs_commit_data** %5, align 8
  %20 = getelementptr inbounds %struct.nfs_commit_data, %struct.nfs_commit_data* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @nfs_refresh_inode(i32 %18, i32 %22)
  store i32 0, i32* %3, align 4
  br label %24

24:                                               ; preds = %15, %12
  %25 = load i32, i32* %3, align 4
  ret i32 %25
}

declare dso_local i64 @nfs3_async_handle_jukebox(%struct.rpc_task*, i32) #1

declare dso_local i32 @nfs_refresh_inode(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
