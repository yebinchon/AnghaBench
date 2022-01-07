; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4proc.c_nfs4_release_lockowner.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4proc.c_nfs4_release_lockowner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_server = type { i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64, i32 }
%struct.nfs4_lock_state = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.nfs_release_lockowner_data = type { %struct.TYPE_8__, %struct.nfs_server*, %struct.nfs4_lock_state* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.rpc_message = type { %struct.TYPE_8__*, i32* }

@nfs4_procedures = common dso_local global i32* null, align 8
@NFSPROC4_CLNT_RELEASE_LOCKOWNER = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@nfs4_release_lockowner_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfs_server*, %struct.nfs4_lock_state*)* @nfs4_release_lockowner to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs4_release_lockowner(%struct.nfs_server* %0, %struct.nfs4_lock_state* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nfs_server*, align 8
  %5 = alloca %struct.nfs4_lock_state*, align 8
  %6 = alloca %struct.nfs_release_lockowner_data*, align 8
  %7 = alloca %struct.rpc_message, align 8
  store %struct.nfs_server* %0, %struct.nfs_server** %4, align 8
  store %struct.nfs4_lock_state* %1, %struct.nfs4_lock_state** %5, align 8
  %8 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %7, i32 0, i32 0
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %8, align 8
  %9 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %7, i32 0, i32 1
  %10 = load i32*, i32** @nfs4_procedures, align 8
  %11 = load i64, i64* @NFSPROC4_CLNT_RELEASE_LOCKOWNER, align 8
  %12 = getelementptr inbounds i32, i32* %10, i64 %11
  store i32* %12, i32** %9, align 8
  %13 = load %struct.nfs_server*, %struct.nfs_server** %4, align 8
  %14 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %13, i32 0, i32 2
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %69

22:                                               ; preds = %2
  %23 = load i32, i32* @GFP_NOFS, align 4
  %24 = call %struct.nfs_release_lockowner_data* @kmalloc(i32 32, i32 %23)
  store %struct.nfs_release_lockowner_data* %24, %struct.nfs_release_lockowner_data** %6, align 8
  %25 = load %struct.nfs_release_lockowner_data*, %struct.nfs_release_lockowner_data** %6, align 8
  %26 = icmp ne %struct.nfs_release_lockowner_data* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %22
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %69

30:                                               ; preds = %22
  %31 = load %struct.nfs4_lock_state*, %struct.nfs4_lock_state** %5, align 8
  %32 = load %struct.nfs_release_lockowner_data*, %struct.nfs_release_lockowner_data** %6, align 8
  %33 = getelementptr inbounds %struct.nfs_release_lockowner_data, %struct.nfs_release_lockowner_data* %32, i32 0, i32 2
  store %struct.nfs4_lock_state* %31, %struct.nfs4_lock_state** %33, align 8
  %34 = load %struct.nfs_server*, %struct.nfs_server** %4, align 8
  %35 = load %struct.nfs_release_lockowner_data*, %struct.nfs_release_lockowner_data** %6, align 8
  %36 = getelementptr inbounds %struct.nfs_release_lockowner_data, %struct.nfs_release_lockowner_data* %35, i32 0, i32 1
  store %struct.nfs_server* %34, %struct.nfs_server** %36, align 8
  %37 = load %struct.nfs_server*, %struct.nfs_server** %4, align 8
  %38 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %37, i32 0, i32 2
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.nfs_release_lockowner_data*, %struct.nfs_release_lockowner_data** %6, align 8
  %43 = getelementptr inbounds %struct.nfs_release_lockowner_data, %struct.nfs_release_lockowner_data* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 2
  store i32 %41, i32* %45, align 8
  %46 = load %struct.nfs4_lock_state*, %struct.nfs4_lock_state** %5, align 8
  %47 = getelementptr inbounds %struct.nfs4_lock_state, %struct.nfs4_lock_state* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.nfs_release_lockowner_data*, %struct.nfs_release_lockowner_data** %6, align 8
  %51 = getelementptr inbounds %struct.nfs_release_lockowner_data, %struct.nfs_release_lockowner_data* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 1
  store i32 %49, i32* %53, align 4
  %54 = load %struct.nfs_server*, %struct.nfs_server** %4, align 8
  %55 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.nfs_release_lockowner_data*, %struct.nfs_release_lockowner_data** %6, align 8
  %58 = getelementptr inbounds %struct.nfs_release_lockowner_data, %struct.nfs_release_lockowner_data* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 0
  store i32 %56, i32* %60, align 8
  %61 = load %struct.nfs_release_lockowner_data*, %struct.nfs_release_lockowner_data** %6, align 8
  %62 = getelementptr inbounds %struct.nfs_release_lockowner_data, %struct.nfs_release_lockowner_data* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %7, i32 0, i32 0
  store %struct.TYPE_8__* %62, %struct.TYPE_8__** %63, align 8
  %64 = load %struct.nfs_server*, %struct.nfs_server** %4, align 8
  %65 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.nfs_release_lockowner_data*, %struct.nfs_release_lockowner_data** %6, align 8
  %68 = call i32 @rpc_call_async(i32 %66, %struct.rpc_message* %7, i32 0, i32* @nfs4_release_lockowner_ops, %struct.nfs_release_lockowner_data* %67)
  store i32 0, i32* %3, align 4
  br label %69

69:                                               ; preds = %30, %27, %19
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local %struct.nfs_release_lockowner_data* @kmalloc(i32, i32) #1

declare dso_local i32 @rpc_call_async(i32, %struct.rpc_message*, i32, i32*, %struct.nfs_release_lockowner_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
