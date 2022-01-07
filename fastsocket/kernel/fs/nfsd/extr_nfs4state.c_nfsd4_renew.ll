; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs4state.c_nfsd4_renew.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs4state.c_nfsd4_renew.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { i32 }
%struct.nfsd4_compound_state = type { i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.nfs4_client = type { i32, i32 }

@.str = private unnamed_addr constant [36 x i8] c"process_renew(%08x/%08x): starting\0A\00", align 1
@nfserr_stale_clientid = common dso_local global i32 0, align 4
@nfserr_expired = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"nfsd4_renew: clientid not found!\0A\00", align 1
@nfserr_cb_path_down = common dso_local global i32 0, align 4
@nfs_ok = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfsd4_renew(%struct.svc_rqst* %0, %struct.nfsd4_compound_state* %1, %struct.TYPE_5__* %2) #0 {
  %4 = alloca %struct.svc_rqst*, align 8
  %5 = alloca %struct.nfsd4_compound_state*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca %struct.nfs4_client*, align 8
  %8 = alloca i32, align 4
  store %struct.svc_rqst* %0, %struct.svc_rqst** %4, align 8
  store %struct.nfsd4_compound_state* %1, %struct.nfsd4_compound_state** %5, align 8
  store %struct.TYPE_5__* %2, %struct.TYPE_5__** %6, align 8
  %9 = call i32 (...) @nfs4_lock_state()
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %12, i32 %15)
  %17 = load i32, i32* @nfserr_stale_clientid, align 4
  store i32 %17, i32* %8, align 4
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %19 = call i64 @STALE_CLIENTID(%struct.TYPE_5__* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %3
  br label %46

22:                                               ; preds = %3
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %24 = call %struct.nfs4_client* @find_confirmed_client(%struct.TYPE_5__* %23)
  store %struct.nfs4_client* %24, %struct.nfs4_client** %7, align 8
  %25 = load i32, i32* @nfserr_expired, align 4
  store i32 %25, i32* %8, align 4
  %26 = load %struct.nfs4_client*, %struct.nfs4_client** %7, align 8
  %27 = icmp eq %struct.nfs4_client* %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %22
  %29 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  br label %46

30:                                               ; preds = %22
  %31 = load %struct.nfs4_client*, %struct.nfs4_client** %7, align 8
  %32 = call i32 @renew_client(%struct.nfs4_client* %31)
  %33 = load i32, i32* @nfserr_cb_path_down, align 4
  store i32 %33, i32* %8, align 4
  %34 = load %struct.nfs4_client*, %struct.nfs4_client** %7, align 8
  %35 = getelementptr inbounds %struct.nfs4_client, %struct.nfs4_client* %34, i32 0, i32 1
  %36 = call i32 @list_empty(i32* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %44, label %38

38:                                               ; preds = %30
  %39 = load %struct.nfs4_client*, %struct.nfs4_client** %7, align 8
  %40 = getelementptr inbounds %struct.nfs4_client, %struct.nfs4_client* %39, i32 0, i32 0
  %41 = call i32 @atomic_read(i32* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %38
  br label %46

44:                                               ; preds = %38, %30
  %45 = load i32, i32* @nfs_ok, align 4
  store i32 %45, i32* %8, align 4
  br label %46

46:                                               ; preds = %44, %43, %28, %21
  %47 = call i32 (...) @nfs4_unlock_state()
  %48 = load i32, i32* %8, align 4
  ret i32 %48
}

declare dso_local i32 @nfs4_lock_state(...) #1

declare dso_local i32 @dprintk(i8*, ...) #1

declare dso_local i64 @STALE_CLIENTID(%struct.TYPE_5__*) #1

declare dso_local %struct.nfs4_client* @find_confirmed_client(%struct.TYPE_5__*) #1

declare dso_local i32 @renew_client(%struct.nfs4_client*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @nfs4_unlock_state(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
