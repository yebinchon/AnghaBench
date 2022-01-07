; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4state.c_nfs4_alloc_lock_state.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4state.c_nfs4_alloc_lock_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs4_lock_state = type { i32, i32, %struct.TYPE_10__, %struct.nfs4_state*, i32, %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_10__ = type { i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_8__* }
%struct.nfs4_state = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.nfs_server* }
%struct.nfs_server = type { i32, %struct.nfs_client* }
%struct.nfs_client = type { i32 }

@GFP_NOFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"lock_seqid_waitqueue\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.nfs4_lock_state* (%struct.nfs4_state*, i32, i32, i32)* @nfs4_alloc_lock_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.nfs4_lock_state* @nfs4_alloc_lock_state(%struct.nfs4_state* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.nfs4_lock_state*, align 8
  %6 = alloca %struct.nfs4_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.nfs4_lock_state*, align 8
  %11 = alloca %struct.nfs_server*, align 8
  %12 = alloca %struct.nfs_client*, align 8
  store %struct.nfs4_state* %0, %struct.nfs4_state** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.nfs4_state*, %struct.nfs4_state** %6, align 8
  %14 = getelementptr inbounds %struct.nfs4_state, %struct.nfs4_state* %13, i32 0, i32 0
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load %struct.nfs_server*, %struct.nfs_server** %16, align 8
  store %struct.nfs_server* %17, %struct.nfs_server** %11, align 8
  %18 = load %struct.nfs_server*, %struct.nfs_server** %11, align 8
  %19 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %18, i32 0, i32 1
  %20 = load %struct.nfs_client*, %struct.nfs_client** %19, align 8
  store %struct.nfs_client* %20, %struct.nfs_client** %12, align 8
  %21 = load i32, i32* @GFP_NOFS, align 4
  %22 = call %struct.nfs4_lock_state* @kzalloc(i32 56, i32 %21)
  store %struct.nfs4_lock_state* %22, %struct.nfs4_lock_state** %10, align 8
  %23 = load %struct.nfs4_lock_state*, %struct.nfs4_lock_state** %10, align 8
  %24 = icmp eq %struct.nfs4_lock_state* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %4
  store %struct.nfs4_lock_state* null, %struct.nfs4_lock_state** %5, align 8
  br label %89

26:                                               ; preds = %4
  %27 = load %struct.nfs4_lock_state*, %struct.nfs4_lock_state** %10, align 8
  %28 = getelementptr inbounds %struct.nfs4_lock_state, %struct.nfs4_lock_state* %27, i32 0, i32 5
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 2
  %30 = call i32 @rpc_init_wait_queue(i32* %29, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %31 = load %struct.nfs4_lock_state*, %struct.nfs4_lock_state** %10, align 8
  %32 = getelementptr inbounds %struct.nfs4_lock_state, %struct.nfs4_lock_state* %31, i32 0, i32 5
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 1
  %34 = call i32 @spin_lock_init(i32* %33)
  %35 = load %struct.nfs4_lock_state*, %struct.nfs4_lock_state** %10, align 8
  %36 = getelementptr inbounds %struct.nfs4_lock_state, %struct.nfs4_lock_state* %35, i32 0, i32 5
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = call i32 @INIT_LIST_HEAD(i32* %37)
  %39 = load %struct.nfs4_lock_state*, %struct.nfs4_lock_state** %10, align 8
  %40 = getelementptr inbounds %struct.nfs4_lock_state, %struct.nfs4_lock_state* %39, i32 0, i32 5
  %41 = load %struct.nfs4_lock_state*, %struct.nfs4_lock_state** %10, align 8
  %42 = getelementptr inbounds %struct.nfs4_lock_state, %struct.nfs4_lock_state* %41, i32 0, i32 6
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  store %struct.TYPE_8__* %40, %struct.TYPE_8__** %43, align 8
  %44 = load %struct.nfs4_lock_state*, %struct.nfs4_lock_state** %10, align 8
  %45 = getelementptr inbounds %struct.nfs4_lock_state, %struct.nfs4_lock_state* %44, i32 0, i32 4
  %46 = call i32 @atomic_set(i32* %45, i32 1)
  %47 = load %struct.nfs4_state*, %struct.nfs4_state** %6, align 8
  %48 = load %struct.nfs4_lock_state*, %struct.nfs4_lock_state** %10, align 8
  %49 = getelementptr inbounds %struct.nfs4_lock_state, %struct.nfs4_lock_state* %48, i32 0, i32 3
  store %struct.nfs4_state* %47, %struct.nfs4_state** %49, align 8
  %50 = load i32, i32* %9, align 4
  %51 = load %struct.nfs4_lock_state*, %struct.nfs4_lock_state** %10, align 8
  %52 = getelementptr inbounds %struct.nfs4_lock_state, %struct.nfs4_lock_state* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 0
  store i32 %50, i32* %53, align 8
  %54 = load %struct.nfs4_lock_state*, %struct.nfs4_lock_state** %10, align 8
  %55 = getelementptr inbounds %struct.nfs4_lock_state, %struct.nfs4_lock_state* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  switch i32 %57, label %70 [
    i32 129, label %58
    i32 128, label %64
  ]

58:                                               ; preds = %26
  %59 = load i32, i32* %8, align 4
  %60 = load %struct.nfs4_lock_state*, %struct.nfs4_lock_state** %10, align 8
  %61 = getelementptr inbounds %struct.nfs4_lock_state, %struct.nfs4_lock_state* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 1
  store i32 %59, i32* %63, align 4
  br label %73

64:                                               ; preds = %26
  %65 = load i32, i32* %7, align 4
  %66 = load %struct.nfs4_lock_state*, %struct.nfs4_lock_state** %10, align 8
  %67 = getelementptr inbounds %struct.nfs4_lock_state, %struct.nfs4_lock_state* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 0
  store i32 %65, i32* %69, align 4
  br label %73

70:                                               ; preds = %26
  %71 = load %struct.nfs4_lock_state*, %struct.nfs4_lock_state** %10, align 8
  %72 = call i32 @kfree(%struct.nfs4_lock_state* %71)
  store %struct.nfs4_lock_state* null, %struct.nfs4_lock_state** %5, align 8
  br label %89

73:                                               ; preds = %64, %58
  %74 = load %struct.nfs_client*, %struct.nfs_client** %12, align 8
  %75 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %74, i32 0, i32 0
  %76 = call i32 @spin_lock(i32* %75)
  %77 = load %struct.nfs_server*, %struct.nfs_server** %11, align 8
  %78 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %77, i32 0, i32 0
  %79 = load %struct.nfs4_lock_state*, %struct.nfs4_lock_state** %10, align 8
  %80 = getelementptr inbounds %struct.nfs4_lock_state, %struct.nfs4_lock_state* %79, i32 0, i32 1
  %81 = call i32 @nfs_alloc_unique_id_locked(i32* %78, i32* %80, i32 1, i32 64)
  %82 = load %struct.nfs_client*, %struct.nfs_client** %12, align 8
  %83 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %82, i32 0, i32 0
  %84 = call i32 @spin_unlock(i32* %83)
  %85 = load %struct.nfs4_lock_state*, %struct.nfs4_lock_state** %10, align 8
  %86 = getelementptr inbounds %struct.nfs4_lock_state, %struct.nfs4_lock_state* %85, i32 0, i32 0
  %87 = call i32 @INIT_LIST_HEAD(i32* %86)
  %88 = load %struct.nfs4_lock_state*, %struct.nfs4_lock_state** %10, align 8
  store %struct.nfs4_lock_state* %88, %struct.nfs4_lock_state** %5, align 8
  br label %89

89:                                               ; preds = %73, %70, %25
  %90 = load %struct.nfs4_lock_state*, %struct.nfs4_lock_state** %5, align 8
  ret %struct.nfs4_lock_state* %90
}

declare dso_local %struct.nfs4_lock_state* @kzalloc(i32, i32) #1

declare dso_local i32 @rpc_init_wait_queue(i32*, i8*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @kfree(%struct.nfs4_lock_state*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @nfs_alloc_unique_id_locked(i32*, i32*, i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
