; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4proc.c__nfs4_do_open_reclaim.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4proc.c__nfs4_do_open_reclaim.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_open_context = type { i32 }
%struct.nfs4_state = type { i32 }
%struct.nfs_delegation = type { i32, i32 }
%struct.nfs4_opendata = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@NFS4_OPEN_CLAIM_PREVIOUS = common dso_local global i32 0, align 4
@NFS_DELEGATION_NEED_RECLAIM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfs_open_context*, %struct.nfs4_state*)* @_nfs4_do_open_reclaim to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_nfs4_do_open_reclaim(%struct.nfs_open_context* %0, %struct.nfs4_state* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nfs_open_context*, align 8
  %5 = alloca %struct.nfs4_state*, align 8
  %6 = alloca %struct.nfs_delegation*, align 8
  %7 = alloca %struct.nfs4_opendata*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.nfs_open_context* %0, %struct.nfs_open_context** %4, align 8
  store %struct.nfs4_state* %1, %struct.nfs4_state** %5, align 8
  store i32 0, i32* %8, align 4
  %10 = load %struct.nfs_open_context*, %struct.nfs_open_context** %4, align 8
  %11 = load %struct.nfs4_state*, %struct.nfs4_state** %5, align 8
  %12 = load i32, i32* @NFS4_OPEN_CLAIM_PREVIOUS, align 4
  %13 = call %struct.nfs4_opendata* @nfs4_open_recoverdata_alloc(%struct.nfs_open_context* %10, %struct.nfs4_state* %11, i32 %12)
  store %struct.nfs4_opendata* %13, %struct.nfs4_opendata** %7, align 8
  %14 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %7, align 8
  %15 = call i64 @IS_ERR(%struct.nfs4_opendata* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %7, align 8
  %19 = call i32 @PTR_ERR(%struct.nfs4_opendata* %18)
  store i32 %19, i32* %3, align 4
  br label %54

20:                                               ; preds = %2
  %21 = call i32 (...) @rcu_read_lock()
  %22 = load %struct.nfs4_state*, %struct.nfs4_state** %5, align 8
  %23 = getelementptr inbounds %struct.nfs4_state, %struct.nfs4_state* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call %struct.TYPE_6__* @NFS_I(i32 %24)
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call %struct.nfs_delegation* @rcu_dereference(i32 %27)
  store %struct.nfs_delegation* %28, %struct.nfs_delegation** %6, align 8
  %29 = load %struct.nfs_delegation*, %struct.nfs_delegation** %6, align 8
  %30 = icmp ne %struct.nfs_delegation* %29, null
  br i1 %30, label %31, label %41

31:                                               ; preds = %20
  %32 = load i32, i32* @NFS_DELEGATION_NEED_RECLAIM, align 4
  %33 = load %struct.nfs_delegation*, %struct.nfs_delegation** %6, align 8
  %34 = getelementptr inbounds %struct.nfs_delegation, %struct.nfs_delegation* %33, i32 0, i32 1
  %35 = call i64 @test_bit(i32 %32, i32* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %31
  %38 = load %struct.nfs_delegation*, %struct.nfs_delegation** %6, align 8
  %39 = getelementptr inbounds %struct.nfs_delegation, %struct.nfs_delegation* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %8, align 4
  br label %41

41:                                               ; preds = %37, %31, %20
  %42 = call i32 (...) @rcu_read_unlock()
  %43 = load i32, i32* %8, align 4
  %44 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %7, align 8
  %45 = getelementptr inbounds %struct.nfs4_opendata, %struct.nfs4_opendata* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  store i32 %43, i32* %47, align 4
  %48 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %7, align 8
  %49 = load %struct.nfs4_state*, %struct.nfs4_state** %5, align 8
  %50 = call i32 @nfs4_open_recover(%struct.nfs4_opendata* %48, %struct.nfs4_state* %49)
  store i32 %50, i32* %9, align 4
  %51 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %7, align 8
  %52 = call i32 @nfs4_opendata_put(%struct.nfs4_opendata* %51)
  %53 = load i32, i32* %9, align 4
  store i32 %53, i32* %3, align 4
  br label %54

54:                                               ; preds = %41, %17
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local %struct.nfs4_opendata* @nfs4_open_recoverdata_alloc(%struct.nfs_open_context*, %struct.nfs4_state*, i32) #1

declare dso_local i64 @IS_ERR(%struct.nfs4_opendata*) #1

declare dso_local i32 @PTR_ERR(%struct.nfs4_opendata*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.nfs_delegation* @rcu_dereference(i32) #1

declare dso_local %struct.TYPE_6__* @NFS_I(i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @nfs4_open_recover(%struct.nfs4_opendata*, %struct.nfs4_state*) #1

declare dso_local i32 @nfs4_opendata_put(%struct.nfs4_opendata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
