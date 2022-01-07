; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4state.c_nfs4_put_lock_state.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4state.c_nfs4_put_lock_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs4_lock_state = type { i32, %struct.nfs4_state*, i32, i32 }
%struct.nfs4_state = type { %struct.TYPE_4__*, i32, i32, i32 }
%struct.TYPE_4__ = type { %struct.nfs_server* }
%struct.nfs_server = type { %struct.nfs_client* }
%struct.nfs_client = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.nfs_server*, %struct.nfs4_lock_state*)* }

@LK_STATE_IN_USE = common dso_local global i32 0, align 4
@NFS_LOCK_INITIALIZED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nfs4_put_lock_state(%struct.nfs4_lock_state* %0) #0 {
  %2 = alloca %struct.nfs4_lock_state*, align 8
  %3 = alloca %struct.nfs_server*, align 8
  %4 = alloca %struct.nfs4_state*, align 8
  %5 = alloca %struct.nfs_client*, align 8
  store %struct.nfs4_lock_state* %0, %struct.nfs4_lock_state** %2, align 8
  %6 = load %struct.nfs4_lock_state*, %struct.nfs4_lock_state** %2, align 8
  %7 = icmp eq %struct.nfs4_lock_state* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %70

9:                                                ; preds = %1
  %10 = load %struct.nfs4_lock_state*, %struct.nfs4_lock_state** %2, align 8
  %11 = getelementptr inbounds %struct.nfs4_lock_state, %struct.nfs4_lock_state* %10, i32 0, i32 1
  %12 = load %struct.nfs4_state*, %struct.nfs4_state** %11, align 8
  store %struct.nfs4_state* %12, %struct.nfs4_state** %4, align 8
  %13 = load %struct.nfs4_lock_state*, %struct.nfs4_lock_state** %2, align 8
  %14 = getelementptr inbounds %struct.nfs4_lock_state, %struct.nfs4_lock_state* %13, i32 0, i32 3
  %15 = load %struct.nfs4_state*, %struct.nfs4_state** %4, align 8
  %16 = getelementptr inbounds %struct.nfs4_state, %struct.nfs4_state* %15, i32 0, i32 1
  %17 = call i32 @atomic_dec_and_lock(i32* %14, i32* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %9
  br label %70

20:                                               ; preds = %9
  %21 = load %struct.nfs4_lock_state*, %struct.nfs4_lock_state** %2, align 8
  %22 = getelementptr inbounds %struct.nfs4_lock_state, %struct.nfs4_lock_state* %21, i32 0, i32 2
  %23 = call i32 @list_del(i32* %22)
  %24 = load %struct.nfs4_state*, %struct.nfs4_state** %4, align 8
  %25 = getelementptr inbounds %struct.nfs4_state, %struct.nfs4_state* %24, i32 0, i32 3
  %26 = call i64 @list_empty(i32* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %20
  %29 = load i32, i32* @LK_STATE_IN_USE, align 4
  %30 = load %struct.nfs4_state*, %struct.nfs4_state** %4, align 8
  %31 = getelementptr inbounds %struct.nfs4_state, %struct.nfs4_state* %30, i32 0, i32 2
  %32 = call i32 @clear_bit(i32 %29, i32* %31)
  br label %33

33:                                               ; preds = %28, %20
  %34 = load %struct.nfs4_state*, %struct.nfs4_state** %4, align 8
  %35 = getelementptr inbounds %struct.nfs4_state, %struct.nfs4_state* %34, i32 0, i32 1
  %36 = call i32 @spin_unlock(i32* %35)
  %37 = load %struct.nfs4_state*, %struct.nfs4_state** %4, align 8
  %38 = getelementptr inbounds %struct.nfs4_state, %struct.nfs4_state* %37, i32 0, i32 0
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load %struct.nfs_server*, %struct.nfs_server** %40, align 8
  store %struct.nfs_server* %41, %struct.nfs_server** %3, align 8
  %42 = load %struct.nfs4_lock_state*, %struct.nfs4_lock_state** %2, align 8
  %43 = getelementptr inbounds %struct.nfs4_lock_state, %struct.nfs4_lock_state* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @NFS_LOCK_INITIALIZED, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %60

48:                                               ; preds = %33
  %49 = load %struct.nfs_server*, %struct.nfs_server** %3, align 8
  %50 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %49, i32 0, i32 0
  %51 = load %struct.nfs_client*, %struct.nfs_client** %50, align 8
  store %struct.nfs_client* %51, %struct.nfs_client** %5, align 8
  %52 = load %struct.nfs_client*, %struct.nfs_client** %5, align 8
  %53 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %52, i32 0, i32 0
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i32 (%struct.nfs_server*, %struct.nfs4_lock_state*)*, i32 (%struct.nfs_server*, %struct.nfs4_lock_state*)** %55, align 8
  %57 = load %struct.nfs_server*, %struct.nfs_server** %3, align 8
  %58 = load %struct.nfs4_lock_state*, %struct.nfs4_lock_state** %2, align 8
  %59 = call i32 %56(%struct.nfs_server* %57, %struct.nfs4_lock_state* %58)
  br label %70

60:                                               ; preds = %33
  %61 = load %struct.nfs4_lock_state*, %struct.nfs4_lock_state** %2, align 8
  %62 = getelementptr inbounds %struct.nfs4_lock_state, %struct.nfs4_lock_state* %61, i32 0, i32 1
  %63 = load %struct.nfs4_state*, %struct.nfs4_state** %62, align 8
  %64 = getelementptr inbounds %struct.nfs4_state, %struct.nfs4_state* %63, i32 0, i32 0
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load %struct.nfs_server*, %struct.nfs_server** %66, align 8
  %68 = load %struct.nfs4_lock_state*, %struct.nfs4_lock_state** %2, align 8
  %69 = call i32 @nfs4_free_lock_state(%struct.nfs_server* %67, %struct.nfs4_lock_state* %68)
  br label %70

70:                                               ; preds = %8, %19, %60, %48
  ret void
}

declare dso_local i32 @atomic_dec_and_lock(i32*, i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @nfs4_free_lock_state(%struct.nfs_server*, %struct.nfs4_lock_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
