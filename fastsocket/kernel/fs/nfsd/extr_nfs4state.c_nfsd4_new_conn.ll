; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs4state.c_nfsd4_new_conn.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs4state.c_nfsd4_new_conn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { i32 }
%struct.nfsd4_session = type { i32 }
%struct.nfsd4_conn = type { i32 }

@NFS4_CDFC4_FORE = common dso_local global i32 0, align 4
@SESSION4_BACK_CHAN = common dso_local global i32 0, align 4
@NFS4_CDFC4_BACK = common dso_local global i32 0, align 4
@nfserr_jukebox = common dso_local global i32 0, align 4
@nfs_ok = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.svc_rqst*, %struct.nfsd4_session*)* @nfsd4_new_conn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfsd4_new_conn(%struct.svc_rqst* %0, %struct.nfsd4_session* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.svc_rqst*, align 8
  %5 = alloca %struct.nfsd4_session*, align 8
  %6 = alloca %struct.nfsd4_conn*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.svc_rqst* %0, %struct.svc_rqst** %4, align 8
  store %struct.nfsd4_session* %1, %struct.nfsd4_session** %5, align 8
  %9 = load i32, i32* @NFS4_CDFC4_FORE, align 4
  store i32 %9, i32* %7, align 4
  %10 = load %struct.nfsd4_session*, %struct.nfsd4_session** %5, align 8
  %11 = getelementptr inbounds %struct.nfsd4_session, %struct.nfsd4_session* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @SESSION4_BACK_CHAN, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %2
  %17 = load i32, i32* @NFS4_CDFC4_BACK, align 4
  %18 = load i32, i32* %7, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %7, align 4
  br label %20

20:                                               ; preds = %16, %2
  %21 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %22 = load i32, i32* %7, align 4
  %23 = call %struct.nfsd4_conn* @alloc_conn(%struct.svc_rqst* %21, i32 %22)
  store %struct.nfsd4_conn* %23, %struct.nfsd4_conn** %6, align 8
  %24 = load %struct.nfsd4_conn*, %struct.nfsd4_conn** %6, align 8
  %25 = icmp ne %struct.nfsd4_conn* %24, null
  br i1 %25, label %28, label %26

26:                                               ; preds = %20
  %27 = load i32, i32* @nfserr_jukebox, align 4
  store i32 %27, i32* %3, align 4
  br label %42

28:                                               ; preds = %20
  %29 = load %struct.nfsd4_conn*, %struct.nfsd4_conn** %6, align 8
  %30 = load %struct.nfsd4_session*, %struct.nfsd4_session** %5, align 8
  %31 = call i32 @nfsd4_hash_conn(%struct.nfsd4_conn* %29, %struct.nfsd4_session* %30)
  %32 = load %struct.nfsd4_conn*, %struct.nfsd4_conn** %6, align 8
  %33 = call i32 @nfsd4_register_conn(%struct.nfsd4_conn* %32)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %28
  %37 = load %struct.nfsd4_conn*, %struct.nfsd4_conn** %6, align 8
  %38 = getelementptr inbounds %struct.nfsd4_conn, %struct.nfsd4_conn* %37, i32 0, i32 0
  %39 = call i32 @nfsd4_conn_lost(i32* %38)
  br label %40

40:                                               ; preds = %36, %28
  %41 = load i32, i32* @nfs_ok, align 4
  store i32 %41, i32* %3, align 4
  br label %42

42:                                               ; preds = %40, %26
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local %struct.nfsd4_conn* @alloc_conn(%struct.svc_rqst*, i32) #1

declare dso_local i32 @nfsd4_hash_conn(%struct.nfsd4_conn*, %struct.nfsd4_session*) #1

declare dso_local i32 @nfsd4_register_conn(%struct.nfsd4_conn*) #1

declare dso_local i32 @nfsd4_conn_lost(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
