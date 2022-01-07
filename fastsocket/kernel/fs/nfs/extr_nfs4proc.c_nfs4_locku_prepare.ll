; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4proc.c_nfs4_locku_prepare.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4proc.c_nfs4_locku_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_task = type { i32* }
%struct.nfs4_unlockdata = type { %struct.TYPE_5__, %struct.TYPE_6__, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }

@NFS_LOCK_INITIALIZED = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rpc_task*, i8*)* @nfs4_locku_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfs4_locku_prepare(%struct.rpc_task* %0, i8* %1) #0 {
  %3 = alloca %struct.rpc_task*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.nfs4_unlockdata*, align 8
  store %struct.rpc_task* %0, %struct.rpc_task** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = bitcast i8* %6 to %struct.nfs4_unlockdata*
  store %struct.nfs4_unlockdata* %7, %struct.nfs4_unlockdata** %5, align 8
  %8 = load %struct.nfs4_unlockdata*, %struct.nfs4_unlockdata** %5, align 8
  %9 = getelementptr inbounds %struct.nfs4_unlockdata, %struct.nfs4_unlockdata* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.rpc_task*, %struct.rpc_task** %3, align 8
  %13 = call i64 @nfs_wait_on_sequence(i32 %11, %struct.rpc_task* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  br label %55

16:                                               ; preds = %2
  %17 = load %struct.nfs4_unlockdata*, %struct.nfs4_unlockdata** %5, align 8
  %18 = getelementptr inbounds %struct.nfs4_unlockdata, %struct.nfs4_unlockdata* %17, i32 0, i32 4
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @NFS_LOCK_INITIALIZED, align 4
  %23 = and i32 %21, %22
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %16
  br label %52

26:                                               ; preds = %16
  %27 = load i32, i32* @jiffies, align 4
  %28 = load %struct.nfs4_unlockdata*, %struct.nfs4_unlockdata** %5, align 8
  %29 = getelementptr inbounds %struct.nfs4_unlockdata, %struct.nfs4_unlockdata* %28, i32 0, i32 3
  store i32 %27, i32* %29, align 8
  %30 = load %struct.nfs4_unlockdata*, %struct.nfs4_unlockdata** %5, align 8
  %31 = getelementptr inbounds %struct.nfs4_unlockdata, %struct.nfs4_unlockdata* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.nfs4_unlockdata*, %struct.nfs4_unlockdata** %5, align 8
  %34 = getelementptr inbounds %struct.nfs4_unlockdata, %struct.nfs4_unlockdata* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 1
  %36 = load %struct.nfs4_unlockdata*, %struct.nfs4_unlockdata** %5, align 8
  %37 = getelementptr inbounds %struct.nfs4_unlockdata, %struct.nfs4_unlockdata* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load %struct.rpc_task*, %struct.rpc_task** %3, align 8
  %40 = call i64 @nfs4_setup_sequence(i32 %32, i32* %35, i32* %38, %struct.rpc_task* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %26
  %43 = load %struct.nfs4_unlockdata*, %struct.nfs4_unlockdata** %5, align 8
  %44 = getelementptr inbounds %struct.nfs4_unlockdata, %struct.nfs4_unlockdata* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @nfs_release_seqid(i32 %46)
  br label %51

48:                                               ; preds = %26
  %49 = load %struct.rpc_task*, %struct.rpc_task** %3, align 8
  %50 = call i32 @rpc_call_start(%struct.rpc_task* %49)
  br label %51

51:                                               ; preds = %48, %42
  br label %61

52:                                               ; preds = %25
  %53 = load %struct.rpc_task*, %struct.rpc_task** %3, align 8
  %54 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %53, i32 0, i32 0
  store i32* null, i32** %54, align 8
  br label %55

55:                                               ; preds = %52, %15
  %56 = load %struct.rpc_task*, %struct.rpc_task** %3, align 8
  %57 = load %struct.nfs4_unlockdata*, %struct.nfs4_unlockdata** %5, align 8
  %58 = getelementptr inbounds %struct.nfs4_unlockdata, %struct.nfs4_unlockdata* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = call i32 @nfs4_sequence_done(%struct.rpc_task* %56, i32* %59)
  br label %61

61:                                               ; preds = %55, %51
  ret void
}

declare dso_local i64 @nfs_wait_on_sequence(i32, %struct.rpc_task*) #1

declare dso_local i64 @nfs4_setup_sequence(i32, i32*, i32*, %struct.rpc_task*) #1

declare dso_local i32 @nfs_release_seqid(i32) #1

declare dso_local i32 @rpc_call_start(%struct.rpc_task*) #1

declare dso_local i32 @nfs4_sequence_done(%struct.rpc_task*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
