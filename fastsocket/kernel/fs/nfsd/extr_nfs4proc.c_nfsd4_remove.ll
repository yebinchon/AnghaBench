; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs4proc.c_nfsd4_remove.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs4proc.c_nfsd4_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { i32 }
%struct.nfsd4_compound_state = type { i32 }
%struct.nfsd4_remove = type { i32, i32, i32 }

@nfserr_grace = common dso_local global i64 0, align 8
@nfserr_symlink = common dso_local global i64 0, align 8
@nfserr_notdir = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.svc_rqst*, %struct.nfsd4_compound_state*, %struct.nfsd4_remove*)* @nfsd4_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @nfsd4_remove(%struct.svc_rqst* %0, %struct.nfsd4_compound_state* %1, %struct.nfsd4_remove* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.svc_rqst*, align 8
  %6 = alloca %struct.nfsd4_compound_state*, align 8
  %7 = alloca %struct.nfsd4_remove*, align 8
  %8 = alloca i64, align 8
  store %struct.svc_rqst* %0, %struct.svc_rqst** %5, align 8
  store %struct.nfsd4_compound_state* %1, %struct.nfsd4_compound_state** %6, align 8
  store %struct.nfsd4_remove* %2, %struct.nfsd4_remove** %7, align 8
  %9 = call i64 (...) @locks_in_grace()
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %3
  %12 = load i64, i64* @nfserr_grace, align 8
  store i64 %12, i64* %4, align 8
  br label %43

13:                                               ; preds = %3
  %14 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %15 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %6, align 8
  %16 = getelementptr inbounds %struct.nfsd4_compound_state, %struct.nfsd4_compound_state* %15, i32 0, i32 0
  %17 = load %struct.nfsd4_remove*, %struct.nfsd4_remove** %7, align 8
  %18 = getelementptr inbounds %struct.nfsd4_remove, %struct.nfsd4_remove* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.nfsd4_remove*, %struct.nfsd4_remove** %7, align 8
  %21 = getelementptr inbounds %struct.nfsd4_remove, %struct.nfsd4_remove* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @nfsd_unlink(%struct.svc_rqst* %14, i32* %16, i32 0, i32 %19, i32 %22)
  store i64 %23, i64* %8, align 8
  %24 = load i64, i64* %8, align 8
  %25 = load i64, i64* @nfserr_symlink, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %13
  %28 = load i64, i64* @nfserr_notdir, align 8
  store i64 %28, i64* %4, align 8
  br label %43

29:                                               ; preds = %13
  %30 = load i64, i64* %8, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %41, label %32

32:                                               ; preds = %29
  %33 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %6, align 8
  %34 = getelementptr inbounds %struct.nfsd4_compound_state, %struct.nfsd4_compound_state* %33, i32 0, i32 0
  %35 = call i32 @fh_unlock(i32* %34)
  %36 = load %struct.nfsd4_remove*, %struct.nfsd4_remove** %7, align 8
  %37 = getelementptr inbounds %struct.nfsd4_remove, %struct.nfsd4_remove* %36, i32 0, i32 0
  %38 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %6, align 8
  %39 = getelementptr inbounds %struct.nfsd4_compound_state, %struct.nfsd4_compound_state* %38, i32 0, i32 0
  %40 = call i32 @set_change_info(i32* %37, i32* %39)
  br label %41

41:                                               ; preds = %32, %29
  %42 = load i64, i64* %8, align 8
  store i64 %42, i64* %4, align 8
  br label %43

43:                                               ; preds = %41, %27, %11
  %44 = load i64, i64* %4, align 8
  ret i64 %44
}

declare dso_local i64 @locks_in_grace(...) #1

declare dso_local i64 @nfsd_unlink(%struct.svc_rqst*, i32*, i32, i32, i32) #1

declare dso_local i32 @fh_unlock(i32*) #1

declare dso_local i32 @set_change_info(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
