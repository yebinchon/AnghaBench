; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs4state.c_nfsd4_reclaim_complete.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs4state.c_nfsd4_reclaim_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { i32 }
%struct.nfsd4_compound_state = type { %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.nfsd4_reclaim_complete = type { i64 }

@nfserr_nofilehandle = common dso_local global i32 0, align 4
@nfs_ok = common dso_local global i32 0, align 4
@nfserr_stale_clientid = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfsd4_reclaim_complete(%struct.svc_rqst* %0, %struct.nfsd4_compound_state* %1, %struct.nfsd4_reclaim_complete* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.svc_rqst*, align 8
  %6 = alloca %struct.nfsd4_compound_state*, align 8
  %7 = alloca %struct.nfsd4_reclaim_complete*, align 8
  store %struct.svc_rqst* %0, %struct.svc_rqst** %5, align 8
  store %struct.nfsd4_compound_state* %1, %struct.nfsd4_compound_state** %6, align 8
  store %struct.nfsd4_reclaim_complete* %2, %struct.nfsd4_reclaim_complete** %7, align 8
  %8 = load %struct.nfsd4_reclaim_complete*, %struct.nfsd4_reclaim_complete** %7, align 8
  %9 = getelementptr inbounds %struct.nfsd4_reclaim_complete, %struct.nfsd4_reclaim_complete* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %22

12:                                               ; preds = %3
  %13 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %6, align 8
  %14 = getelementptr inbounds %struct.nfsd4_compound_state, %struct.nfsd4_compound_state* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %12
  %19 = load i32, i32* @nfserr_nofilehandle, align 4
  store i32 %19, i32* %4, align 4
  br label %43

20:                                               ; preds = %12
  %21 = load i32, i32* @nfs_ok, align 4
  store i32 %21, i32* %4, align 4
  br label %43

22:                                               ; preds = %3
  %23 = call i32 (...) @nfs4_lock_state()
  %24 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %6, align 8
  %25 = getelementptr inbounds %struct.nfsd4_compound_state, %struct.nfsd4_compound_state* %24, i32 0, i32 0
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @is_client_expired(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %22
  %32 = call i32 (...) @nfs4_unlock_state()
  %33 = load i32, i32* @nfserr_stale_clientid, align 4
  store i32 %33, i32* %4, align 4
  br label %43

34:                                               ; preds = %22
  %35 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %6, align 8
  %36 = getelementptr inbounds %struct.nfsd4_compound_state, %struct.nfsd4_compound_state* %35, i32 0, i32 0
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @nfsd4_create_clid_dir(i32 %39)
  %41 = call i32 (...) @nfs4_unlock_state()
  %42 = load i32, i32* @nfs_ok, align 4
  store i32 %42, i32* %4, align 4
  br label %43

43:                                               ; preds = %34, %31, %20, %18
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

declare dso_local i32 @nfs4_lock_state(...) #1

declare dso_local i64 @is_client_expired(i32) #1

declare dso_local i32 @nfs4_unlock_state(...) #1

declare dso_local i32 @nfsd4_create_clid_dir(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
