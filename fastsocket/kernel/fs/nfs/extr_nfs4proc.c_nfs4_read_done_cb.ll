; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4proc.c_nfs4_read_done_cb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4proc.c_nfs4_read_done_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_task = type { i64 }
%struct.nfs_read_data = type { i32, %struct.TYPE_6__, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.nfs_server = type { i32 }

@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rpc_task*, %struct.nfs_read_data*)* @nfs4_read_done_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs4_read_done_cb(%struct.rpc_task* %0, %struct.nfs_read_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rpc_task*, align 8
  %5 = alloca %struct.nfs_read_data*, align 8
  %6 = alloca %struct.nfs_server*, align 8
  store %struct.rpc_task* %0, %struct.rpc_task** %4, align 8
  store %struct.nfs_read_data* %1, %struct.nfs_read_data** %5, align 8
  %7 = load %struct.nfs_read_data*, %struct.nfs_read_data** %5, align 8
  %8 = getelementptr inbounds %struct.nfs_read_data, %struct.nfs_read_data* %7, i32 0, i32 2
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.nfs_server* @NFS_SERVER(i32 %11)
  store %struct.nfs_server* %12, %struct.nfs_server** %6, align 8
  %13 = load %struct.rpc_task*, %struct.rpc_task** %4, align 8
  %14 = load %struct.nfs_server*, %struct.nfs_server** %6, align 8
  %15 = load %struct.nfs_read_data*, %struct.nfs_read_data** %5, align 8
  %16 = getelementptr inbounds %struct.nfs_read_data, %struct.nfs_read_data* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @nfs4_async_handle_error(%struct.rpc_task* %13, %struct.nfs_server* %14, i32 %20)
  %22 = load i32, i32* @EAGAIN, align 4
  %23 = sub nsw i32 0, %22
  %24 = icmp eq i32 %21, %23
  br i1 %24, label %25, label %30

25:                                               ; preds = %2
  %26 = load %struct.rpc_task*, %struct.rpc_task** %4, align 8
  %27 = call i32 @rpc_restart_call_prepare(%struct.rpc_task* %26)
  %28 = load i32, i32* @EAGAIN, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %44

30:                                               ; preds = %2
  %31 = load %struct.nfs_read_data*, %struct.nfs_read_data** %5, align 8
  %32 = call i32 @__nfs4_read_done_cb(%struct.nfs_read_data* %31)
  %33 = load %struct.rpc_task*, %struct.rpc_task** %4, align 8
  %34 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp sgt i64 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %30
  %38 = load %struct.nfs_server*, %struct.nfs_server** %6, align 8
  %39 = load %struct.nfs_read_data*, %struct.nfs_read_data** %5, align 8
  %40 = getelementptr inbounds %struct.nfs_read_data, %struct.nfs_read_data* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @renew_lease(%struct.nfs_server* %38, i32 %41)
  br label %43

43:                                               ; preds = %37, %30
  store i32 0, i32* %3, align 4
  br label %44

44:                                               ; preds = %43, %25
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local %struct.nfs_server* @NFS_SERVER(i32) #1

declare dso_local i32 @nfs4_async_handle_error(%struct.rpc_task*, %struct.nfs_server*, i32) #1

declare dso_local i32 @rpc_restart_call_prepare(%struct.rpc_task*) #1

declare dso_local i32 @__nfs4_read_done_cb(%struct.nfs_read_data*) #1

declare dso_local i32 @renew_lease(%struct.nfs_server*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
