; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs4state.c_nfs4_check_deleg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs4state.c_nfs4_check_deleg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs4_file = type { i32 }
%struct.nfsd4_open = type { i64, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.nfs4_delegation = type { i32 }

@nfserr_bad_stateid = common dso_local global i64 0, align 8
@NFS4_OPEN_CLAIM_DELEGATE_CUR = common dso_local global i64 0, align 8
@nfs_ok = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.nfs4_file*, %struct.nfsd4_open*, %struct.nfs4_delegation**)* @nfs4_check_deleg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @nfs4_check_deleg(%struct.nfs4_file* %0, %struct.nfsd4_open* %1, %struct.nfs4_delegation** %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.nfs4_file*, align 8
  %6 = alloca %struct.nfsd4_open*, align 8
  %7 = alloca %struct.nfs4_delegation**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.nfs4_file* %0, %struct.nfs4_file** %5, align 8
  store %struct.nfsd4_open* %1, %struct.nfsd4_open** %6, align 8
  store %struct.nfs4_delegation** %2, %struct.nfs4_delegation*** %7, align 8
  %10 = load i64, i64* @nfserr_bad_stateid, align 8
  store i64 %10, i64* %9, align 8
  %11 = load %struct.nfs4_file*, %struct.nfs4_file** %5, align 8
  %12 = load %struct.nfsd4_open*, %struct.nfsd4_open** %6, align 8
  %13 = getelementptr inbounds %struct.nfsd4_open, %struct.nfsd4_open* %12, i32 0, i32 3
  %14 = call %struct.nfs4_delegation* @find_delegation_file(%struct.nfs4_file* %11, i32* %13)
  %15 = load %struct.nfs4_delegation**, %struct.nfs4_delegation*** %7, align 8
  store %struct.nfs4_delegation* %14, %struct.nfs4_delegation** %15, align 8
  %16 = load %struct.nfs4_delegation**, %struct.nfs4_delegation*** %7, align 8
  %17 = load %struct.nfs4_delegation*, %struct.nfs4_delegation** %16, align 8
  %18 = icmp eq %struct.nfs4_delegation* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  br label %34

20:                                               ; preds = %3
  %21 = load %struct.nfsd4_open*, %struct.nfsd4_open** %6, align 8
  %22 = getelementptr inbounds %struct.nfsd4_open, %struct.nfsd4_open* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @share_access_to_flags(i32 %23)
  store i32 %24, i32* %8, align 4
  %25 = load %struct.nfs4_delegation**, %struct.nfs4_delegation*** %7, align 8
  %26 = load %struct.nfs4_delegation*, %struct.nfs4_delegation** %25, align 8
  %27 = load i32, i32* %8, align 4
  %28 = call i64 @nfs4_check_delegmode(%struct.nfs4_delegation* %26, i32 %27)
  store i64 %28, i64* %9, align 8
  %29 = load i64, i64* %9, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %20
  %32 = load %struct.nfs4_delegation**, %struct.nfs4_delegation*** %7, align 8
  store %struct.nfs4_delegation* null, %struct.nfs4_delegation** %32, align 8
  br label %33

33:                                               ; preds = %31, %20
  br label %34

34:                                               ; preds = %33, %19
  %35 = load %struct.nfsd4_open*, %struct.nfsd4_open** %6, align 8
  %36 = getelementptr inbounds %struct.nfsd4_open, %struct.nfsd4_open* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @NFS4_OPEN_CLAIM_DELEGATE_CUR, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %34
  %41 = load i64, i64* @nfs_ok, align 8
  store i64 %41, i64* %4, align 8
  br label %53

42:                                               ; preds = %34
  %43 = load i64, i64* %9, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %42
  %46 = load i64, i64* %9, align 8
  store i64 %46, i64* %4, align 8
  br label %53

47:                                               ; preds = %42
  %48 = load %struct.nfsd4_open*, %struct.nfsd4_open** %6, align 8
  %49 = getelementptr inbounds %struct.nfsd4_open, %struct.nfsd4_open* %48, i32 0, i32 1
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  store i32 1, i32* %51, align 4
  %52 = load i64, i64* @nfs_ok, align 8
  store i64 %52, i64* %4, align 8
  br label %53

53:                                               ; preds = %47, %45, %40
  %54 = load i64, i64* %4, align 8
  ret i64 %54
}

declare dso_local %struct.nfs4_delegation* @find_delegation_file(%struct.nfs4_file*, i32*) #1

declare dso_local i32 @share_access_to_flags(i32) #1

declare dso_local i64 @nfs4_check_delegmode(%struct.nfs4_delegation*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
