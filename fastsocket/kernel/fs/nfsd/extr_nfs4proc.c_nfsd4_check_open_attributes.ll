; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs4proc.c_nfsd4_check_open_attributes.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs4proc.c_nfsd4_check_open_attributes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { i32 }
%struct.nfsd4_compound_state = type { i32 }
%struct.nfsd4_open = type { i64, i64, i32 }

@nfs_ok = common dso_local global i32 0, align 4
@NFS4_OPEN_CREATE = common dso_local global i64 0, align 8
@NFS4_CREATE_UNCHECKED = common dso_local global i64 0, align 8
@NFS4_CREATE_GUARDED = common dso_local global i64 0, align 8
@nfsd_attrmask = common dso_local global i32 0, align 4
@NFS4_CREATE_EXCLUSIVE4_1 = common dso_local global i64 0, align 8
@nfsd41_ex_attrmask = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.svc_rqst*, %struct.nfsd4_compound_state*, %struct.nfsd4_open*)* @nfsd4_check_open_attributes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfsd4_check_open_attributes(%struct.svc_rqst* %0, %struct.nfsd4_compound_state* %1, %struct.nfsd4_open* %2) #0 {
  %4 = alloca %struct.svc_rqst*, align 8
  %5 = alloca %struct.nfsd4_compound_state*, align 8
  %6 = alloca %struct.nfsd4_open*, align 8
  %7 = alloca i32, align 4
  store %struct.svc_rqst* %0, %struct.svc_rqst** %4, align 8
  store %struct.nfsd4_compound_state* %1, %struct.nfsd4_compound_state** %5, align 8
  store %struct.nfsd4_open* %2, %struct.nfsd4_open** %6, align 8
  %8 = load i32, i32* @nfs_ok, align 4
  store i32 %8, i32* %7, align 4
  %9 = load %struct.nfsd4_open*, %struct.nfsd4_open** %6, align 8
  %10 = getelementptr inbounds %struct.nfsd4_open, %struct.nfsd4_open* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @NFS4_OPEN_CREATE, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %50

14:                                               ; preds = %3
  %15 = load %struct.nfsd4_open*, %struct.nfsd4_open** %6, align 8
  %16 = getelementptr inbounds %struct.nfsd4_open, %struct.nfsd4_open* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @NFS4_CREATE_UNCHECKED, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %26, label %20

20:                                               ; preds = %14
  %21 = load %struct.nfsd4_open*, %struct.nfsd4_open** %6, align 8
  %22 = getelementptr inbounds %struct.nfsd4_open, %struct.nfsd4_open* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @NFS4_CREATE_GUARDED, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %34

26:                                               ; preds = %20, %14
  %27 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %28 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %5, align 8
  %29 = load %struct.nfsd4_open*, %struct.nfsd4_open** %6, align 8
  %30 = getelementptr inbounds %struct.nfsd4_open, %struct.nfsd4_open* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @nfsd_attrmask, align 4
  %33 = call i32 @check_attr_support(%struct.svc_rqst* %27, %struct.nfsd4_compound_state* %28, i32 %31, i32 %32)
  store i32 %33, i32* %7, align 4
  br label %49

34:                                               ; preds = %20
  %35 = load %struct.nfsd4_open*, %struct.nfsd4_open** %6, align 8
  %36 = getelementptr inbounds %struct.nfsd4_open, %struct.nfsd4_open* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @NFS4_CREATE_EXCLUSIVE4_1, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %48

40:                                               ; preds = %34
  %41 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %42 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %5, align 8
  %43 = load %struct.nfsd4_open*, %struct.nfsd4_open** %6, align 8
  %44 = getelementptr inbounds %struct.nfsd4_open, %struct.nfsd4_open* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @nfsd41_ex_attrmask, align 4
  %47 = call i32 @check_attr_support(%struct.svc_rqst* %41, %struct.nfsd4_compound_state* %42, i32 %45, i32 %46)
  store i32 %47, i32* %7, align 4
  br label %48

48:                                               ; preds = %40, %34
  br label %49

49:                                               ; preds = %48, %26
  br label %50

50:                                               ; preds = %49, %3
  %51 = load i32, i32* %7, align 4
  ret i32 %51
}

declare dso_local i32 @check_attr_support(%struct.svc_rqst*, %struct.nfsd4_compound_state*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
