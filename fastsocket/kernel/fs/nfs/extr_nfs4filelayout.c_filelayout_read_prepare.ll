; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4filelayout.c_filelayout_read_prepare.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4filelayout.c_filelayout_read_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_task = type { i32 }
%struct.nfs_read_data = type { %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__*, i32 }
%struct.TYPE_7__ = type { i32, %struct.TYPE_8__*, i32, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@NFS_CONTEXT_BAD = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@filelayout_read_done_cb = common dso_local global i32 0, align 4
@FMODE_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rpc_task*, i8*)* @filelayout_read_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @filelayout_read_prepare(%struct.rpc_task* %0, i8* %1) #0 {
  %3 = alloca %struct.rpc_task*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.nfs_read_data*, align 8
  store %struct.rpc_task* %0, %struct.rpc_task** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = bitcast i8* %6 to %struct.nfs_read_data*
  store %struct.nfs_read_data* %7, %struct.nfs_read_data** %5, align 8
  %8 = load i32, i32* @NFS_CONTEXT_BAD, align 4
  %9 = load %struct.nfs_read_data*, %struct.nfs_read_data** %5, align 8
  %10 = getelementptr inbounds %struct.nfs_read_data, %struct.nfs_read_data* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 1
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %14 = call i32 @test_bit(i32 %8, i32* %13)
  %15 = call i64 @unlikely(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %2
  %18 = load %struct.rpc_task*, %struct.rpc_task** %3, align 8
  %19 = load i32, i32* @EIO, align 4
  %20 = sub nsw i32 0, %19
  %21 = call i32 @rpc_exit(%struct.rpc_task* %18, i32 %20)
  br label %57

22:                                               ; preds = %2
  %23 = load i32, i32* @filelayout_read_done_cb, align 4
  %24 = load %struct.nfs_read_data*, %struct.nfs_read_data** %5, align 8
  %25 = getelementptr inbounds %struct.nfs_read_data, %struct.nfs_read_data* %24, i32 0, i32 3
  store i32 %23, i32* %25, align 8
  %26 = load %struct.nfs_read_data*, %struct.nfs_read_data** %5, align 8
  %27 = getelementptr inbounds %struct.nfs_read_data, %struct.nfs_read_data* %26, i32 0, i32 2
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.nfs_read_data*, %struct.nfs_read_data** %5, align 8
  %32 = getelementptr inbounds %struct.nfs_read_data, %struct.nfs_read_data* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 3
  %34 = load %struct.nfs_read_data*, %struct.nfs_read_data** %5, align 8
  %35 = getelementptr inbounds %struct.nfs_read_data, %struct.nfs_read_data* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load %struct.rpc_task*, %struct.rpc_task** %3, align 8
  %38 = call i64 @nfs41_setup_sequence(i32 %30, i32* %33, i32* %36, %struct.rpc_task* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %22
  br label %57

41:                                               ; preds = %22
  %42 = load %struct.rpc_task*, %struct.rpc_task** %3, align 8
  %43 = call i32 @rpc_call_start(%struct.rpc_task* %42)
  %44 = load %struct.nfs_read_data*, %struct.nfs_read_data** %5, align 8
  %45 = getelementptr inbounds %struct.nfs_read_data, %struct.nfs_read_data* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 2
  %47 = load %struct.nfs_read_data*, %struct.nfs_read_data** %5, align 8
  %48 = getelementptr inbounds %struct.nfs_read_data, %struct.nfs_read_data* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 1
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %49, align 8
  %51 = load %struct.nfs_read_data*, %struct.nfs_read_data** %5, align 8
  %52 = getelementptr inbounds %struct.nfs_read_data, %struct.nfs_read_data* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @FMODE_READ, align 4
  %56 = call i32 @nfs4_set_rw_stateid(i32* %46, %struct.TYPE_8__* %50, i32 %54, i32 %55)
  br label %57

57:                                               ; preds = %41, %40, %17
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @rpc_exit(%struct.rpc_task*, i32) #1

declare dso_local i64 @nfs41_setup_sequence(i32, i32*, i32*, %struct.rpc_task*) #1

declare dso_local i32 @rpc_call_start(%struct.rpc_task*) #1

declare dso_local i32 @nfs4_set_rw_stateid(i32*, %struct.TYPE_8__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
