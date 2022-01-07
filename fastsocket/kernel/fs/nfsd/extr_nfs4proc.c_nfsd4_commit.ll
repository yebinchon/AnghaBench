; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs4proc.c_nfsd4_commit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs4proc.c_nfsd4_commit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.svc_rqst = type { i32 }
%struct.nfsd4_compound_state = type { i32 }
%struct.nfsd4_commit = type { i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@nfssvc_boot = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@nfserr_symlink = common dso_local global i64 0, align 8
@nfserr_inval = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.svc_rqst*, %struct.nfsd4_compound_state*, %struct.nfsd4_commit*)* @nfsd4_commit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @nfsd4_commit(%struct.svc_rqst* %0, %struct.nfsd4_compound_state* %1, %struct.nfsd4_commit* %2) #0 {
  %4 = alloca %struct.svc_rqst*, align 8
  %5 = alloca %struct.nfsd4_compound_state*, align 8
  %6 = alloca %struct.nfsd4_commit*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  store %struct.svc_rqst* %0, %struct.svc_rqst** %4, align 8
  store %struct.nfsd4_compound_state* %1, %struct.nfsd4_compound_state** %5, align 8
  store %struct.nfsd4_commit* %2, %struct.nfsd4_commit** %6, align 8
  %9 = load %struct.nfsd4_commit*, %struct.nfsd4_commit** %6, align 8
  %10 = getelementptr inbounds %struct.nfsd4_commit, %struct.nfsd4_commit* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to i32*
  store i32* %13, i32** %8, align 8
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @nfssvc_boot, i32 0, i32 1), align 4
  %15 = load i32*, i32** %8, align 8
  %16 = getelementptr inbounds i32, i32* %15, i32 1
  store i32* %16, i32** %8, align 8
  store i32 %14, i32* %15, align 4
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @nfssvc_boot, i32 0, i32 0), align 4
  %18 = load i32*, i32** %8, align 8
  %19 = getelementptr inbounds i32, i32* %18, i32 1
  store i32* %19, i32** %8, align 8
  store i32 %17, i32* %18, align 4
  %20 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %21 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %5, align 8
  %22 = getelementptr inbounds %struct.nfsd4_compound_state, %struct.nfsd4_compound_state* %21, i32 0, i32 0
  %23 = load %struct.nfsd4_commit*, %struct.nfsd4_commit** %6, align 8
  %24 = getelementptr inbounds %struct.nfsd4_commit, %struct.nfsd4_commit* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.nfsd4_commit*, %struct.nfsd4_commit** %6, align 8
  %27 = getelementptr inbounds %struct.nfsd4_commit, %struct.nfsd4_commit* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i64 @nfsd_commit(%struct.svc_rqst* %20, i32* %22, i32 %25, i32 %28)
  store i64 %29, i64* %7, align 8
  %30 = load i64, i64* %7, align 8
  %31 = load i64, i64* @nfserr_symlink, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %3
  %34 = load i64, i64* @nfserr_inval, align 8
  store i64 %34, i64* %7, align 8
  br label %35

35:                                               ; preds = %33, %3
  %36 = load i64, i64* %7, align 8
  ret i64 %36
}

declare dso_local i64 @nfsd_commit(%struct.svc_rqst*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
