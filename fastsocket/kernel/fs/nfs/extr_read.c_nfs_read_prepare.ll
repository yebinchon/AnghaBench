; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_read.c_nfs_read_prepare.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_read.c_nfs_read_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_task = type { i32 }
%struct.nfs_read_data = type { %struct.TYPE_7__, %struct.TYPE_5__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_8__ = type { i32 (%struct.rpc_task*, %struct.nfs_read_data*)* }

@NFS_CONTEXT_BAD = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nfs_read_prepare(%struct.rpc_task* %0, i8* %1) #0 {
  %3 = alloca %struct.rpc_task*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.nfs_read_data*, align 8
  store %struct.rpc_task* %0, %struct.rpc_task** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = bitcast i8* %6 to %struct.nfs_read_data*
  store %struct.nfs_read_data* %7, %struct.nfs_read_data** %5, align 8
  %8 = load %struct.nfs_read_data*, %struct.nfs_read_data** %5, align 8
  %9 = getelementptr inbounds %struct.nfs_read_data, %struct.nfs_read_data* %8, i32 0, i32 1
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.TYPE_8__* @NFS_PROTO(i32 %12)
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = load i32 (%struct.rpc_task*, %struct.nfs_read_data*)*, i32 (%struct.rpc_task*, %struct.nfs_read_data*)** %14, align 8
  %16 = load %struct.rpc_task*, %struct.rpc_task** %3, align 8
  %17 = load %struct.nfs_read_data*, %struct.nfs_read_data** %5, align 8
  %18 = call i32 %15(%struct.rpc_task* %16, %struct.nfs_read_data* %17)
  %19 = load i32, i32* @NFS_CONTEXT_BAD, align 4
  %20 = load %struct.nfs_read_data*, %struct.nfs_read_data** %5, align 8
  %21 = getelementptr inbounds %struct.nfs_read_data, %struct.nfs_read_data* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = call i32 @test_bit(i32 %19, i32* %24)
  %26 = call i64 @unlikely(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %2
  %29 = load %struct.rpc_task*, %struct.rpc_task** %3, align 8
  %30 = load i32, i32* @EIO, align 4
  %31 = sub nsw i32 0, %30
  %32 = call i32 @rpc_exit(%struct.rpc_task* %29, i32 %31)
  br label %33

33:                                               ; preds = %28, %2
  ret void
}

declare dso_local %struct.TYPE_8__* @NFS_PROTO(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @rpc_exit(%struct.rpc_task*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
