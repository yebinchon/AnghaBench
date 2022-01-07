; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4state.c_nfs4_copy_lock_stateid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4state.c_nfs4_copy_lock_stateid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs4_state = type { i32, i32 }
%struct.nfs_lockowner = type { i32, i32 }
%struct.nfs4_lock_state = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@LK_STATE_IN_USE = common dso_local global i32 0, align 4
@NFS4_ANY_LOCK_TYPE = common dso_local global i32 0, align 4
@NFS_LOCK_INITIALIZED = common dso_local global i32 0, align 4
@EWOULDBLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.nfs4_state*, %struct.nfs_lockowner*)* @nfs4_copy_lock_stateid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs4_copy_lock_stateid(i32* %0, %struct.nfs4_state* %1, %struct.nfs_lockowner* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.nfs4_state*, align 8
  %6 = alloca %struct.nfs_lockowner*, align 8
  %7 = alloca %struct.nfs4_lock_state*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.nfs4_state* %1, %struct.nfs4_state** %5, align 8
  store %struct.nfs_lockowner* %2, %struct.nfs_lockowner** %6, align 8
  %11 = load i32, i32* @ENOENT, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %10, align 4
  %13 = load %struct.nfs_lockowner*, %struct.nfs_lockowner** %6, align 8
  %14 = icmp eq %struct.nfs_lockowner* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  br label %68

16:                                               ; preds = %3
  %17 = load i32, i32* @LK_STATE_IN_USE, align 4
  %18 = load %struct.nfs4_state*, %struct.nfs4_state** %5, align 8
  %19 = getelementptr inbounds %struct.nfs4_state, %struct.nfs4_state* %18, i32 0, i32 1
  %20 = call i64 @test_bit(i32 %17, i32* %19)
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  br label %68

23:                                               ; preds = %16
  %24 = load %struct.nfs_lockowner*, %struct.nfs_lockowner** %6, align 8
  %25 = getelementptr inbounds %struct.nfs_lockowner, %struct.nfs_lockowner* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %8, align 4
  %27 = load %struct.nfs_lockowner*, %struct.nfs_lockowner** %6, align 8
  %28 = getelementptr inbounds %struct.nfs_lockowner, %struct.nfs_lockowner* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %9, align 4
  %30 = load %struct.nfs4_state*, %struct.nfs4_state** %5, align 8
  %31 = getelementptr inbounds %struct.nfs4_state, %struct.nfs4_state* %30, i32 0, i32 0
  %32 = call i32 @spin_lock(i32* %31)
  %33 = load %struct.nfs4_state*, %struct.nfs4_state** %5, align 8
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* @NFS4_ANY_LOCK_TYPE, align 4
  %37 = call %struct.nfs4_lock_state* @__nfs4_find_lock_state(%struct.nfs4_state* %33, i32 %34, i32 %35, i32 %36)
  store %struct.nfs4_lock_state* %37, %struct.nfs4_lock_state** %7, align 8
  %38 = load %struct.nfs4_lock_state*, %struct.nfs4_lock_state** %7, align 8
  %39 = icmp ne %struct.nfs4_lock_state* %38, null
  br i1 %39, label %40, label %62

40:                                               ; preds = %23
  %41 = load %struct.nfs4_lock_state*, %struct.nfs4_lock_state** %7, align 8
  %42 = getelementptr inbounds %struct.nfs4_lock_state, %struct.nfs4_lock_state* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @NFS_LOCK_INITIALIZED, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %62

47:                                               ; preds = %40
  %48 = load i32*, i32** %4, align 8
  %49 = load %struct.nfs4_lock_state*, %struct.nfs4_lock_state** %7, align 8
  %50 = getelementptr inbounds %struct.nfs4_lock_state, %struct.nfs4_lock_state* %49, i32 0, i32 2
  %51 = call i32 @nfs4_stateid_copy(i32* %48, i32* %50)
  store i32 0, i32* %10, align 4
  %52 = call i32 (...) @smp_rmb()
  %53 = load %struct.nfs4_lock_state*, %struct.nfs4_lock_state** %7, align 8
  %54 = getelementptr inbounds %struct.nfs4_lock_state, %struct.nfs4_lock_state* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = call i32 @list_empty(i32* %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %47
  %59 = load i32, i32* @EWOULDBLOCK, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %10, align 4
  br label %61

61:                                               ; preds = %58, %47
  br label %62

62:                                               ; preds = %61, %40, %23
  %63 = load %struct.nfs4_state*, %struct.nfs4_state** %5, align 8
  %64 = getelementptr inbounds %struct.nfs4_state, %struct.nfs4_state* %63, i32 0, i32 0
  %65 = call i32 @spin_unlock(i32* %64)
  %66 = load %struct.nfs4_lock_state*, %struct.nfs4_lock_state** %7, align 8
  %67 = call i32 @nfs4_put_lock_state(%struct.nfs4_lock_state* %66)
  br label %68

68:                                               ; preds = %62, %22, %15
  %69 = load i32, i32* %10, align 4
  ret i32 %69
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.nfs4_lock_state* @__nfs4_find_lock_state(%struct.nfs4_state*, i32, i32, i32) #1

declare dso_local i32 @nfs4_stateid_copy(i32*, i32*) #1

declare dso_local i32 @smp_rmb(...) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @nfs4_put_lock_state(%struct.nfs4_lock_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
