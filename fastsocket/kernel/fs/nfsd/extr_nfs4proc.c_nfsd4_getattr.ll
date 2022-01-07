; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs4proc.c_nfsd4_getattr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs4proc.c_nfsd4_getattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { i32 }
%struct.nfsd4_compound_state = type { i32, i32 }
%struct.nfsd4_getattr = type { i32*, i32* }

@NFSD_MAY_NOP = common dso_local global i32 0, align 4
@NFSD_WRITEONLY_ATTRS_WORD1 = common dso_local global i32 0, align 4
@nfserr_inval = common dso_local global i64 0, align 8
@nfs_ok = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.svc_rqst*, %struct.nfsd4_compound_state*, %struct.nfsd4_getattr*)* @nfsd4_getattr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @nfsd4_getattr(%struct.svc_rqst* %0, %struct.nfsd4_compound_state* %1, %struct.nfsd4_getattr* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.svc_rqst*, align 8
  %6 = alloca %struct.nfsd4_compound_state*, align 8
  %7 = alloca %struct.nfsd4_getattr*, align 8
  %8 = alloca i64, align 8
  store %struct.svc_rqst* %0, %struct.svc_rqst** %5, align 8
  store %struct.nfsd4_compound_state* %1, %struct.nfsd4_compound_state** %6, align 8
  store %struct.nfsd4_getattr* %2, %struct.nfsd4_getattr** %7, align 8
  %9 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %10 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %6, align 8
  %11 = getelementptr inbounds %struct.nfsd4_compound_state, %struct.nfsd4_compound_state* %10, i32 0, i32 0
  %12 = load i32, i32* @NFSD_MAY_NOP, align 4
  %13 = call i64 @fh_verify(%struct.svc_rqst* %9, i32* %11, i32 0, i32 %12)
  store i64 %13, i64* %8, align 8
  %14 = load i64, i64* %8, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i64, i64* %8, align 8
  store i64 %17, i64* %4, align 8
  br label %65

18:                                               ; preds = %3
  %19 = load %struct.nfsd4_getattr*, %struct.nfsd4_getattr** %7, align 8
  %20 = getelementptr inbounds %struct.nfsd4_getattr, %struct.nfsd4_getattr* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @NFSD_WRITEONLY_ATTRS_WORD1, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %18
  %28 = load i64, i64* @nfserr_inval, align 8
  store i64 %28, i64* %4, align 8
  br label %65

29:                                               ; preds = %18
  %30 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %6, align 8
  %31 = getelementptr inbounds %struct.nfsd4_compound_state, %struct.nfsd4_compound_state* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @nfsd_suppattrs0(i32 %32)
  %34 = load %struct.nfsd4_getattr*, %struct.nfsd4_getattr** %7, align 8
  %35 = getelementptr inbounds %struct.nfsd4_getattr, %struct.nfsd4_getattr* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 0
  %38 = load i32, i32* %37, align 4
  %39 = and i32 %38, %33
  store i32 %39, i32* %37, align 4
  %40 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %6, align 8
  %41 = getelementptr inbounds %struct.nfsd4_compound_state, %struct.nfsd4_compound_state* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @nfsd_suppattrs1(i32 %42)
  %44 = load %struct.nfsd4_getattr*, %struct.nfsd4_getattr** %7, align 8
  %45 = getelementptr inbounds %struct.nfsd4_getattr, %struct.nfsd4_getattr* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 1
  %48 = load i32, i32* %47, align 4
  %49 = and i32 %48, %43
  store i32 %49, i32* %47, align 4
  %50 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %6, align 8
  %51 = getelementptr inbounds %struct.nfsd4_compound_state, %struct.nfsd4_compound_state* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @nfsd_suppattrs2(i32 %52)
  %54 = load %struct.nfsd4_getattr*, %struct.nfsd4_getattr** %7, align 8
  %55 = getelementptr inbounds %struct.nfsd4_getattr, %struct.nfsd4_getattr* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 2
  %58 = load i32, i32* %57, align 4
  %59 = and i32 %58, %53
  store i32 %59, i32* %57, align 4
  %60 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %6, align 8
  %61 = getelementptr inbounds %struct.nfsd4_compound_state, %struct.nfsd4_compound_state* %60, i32 0, i32 0
  %62 = load %struct.nfsd4_getattr*, %struct.nfsd4_getattr** %7, align 8
  %63 = getelementptr inbounds %struct.nfsd4_getattr, %struct.nfsd4_getattr* %62, i32 0, i32 1
  store i32* %61, i32** %63, align 8
  %64 = load i64, i64* @nfs_ok, align 8
  store i64 %64, i64* %4, align 8
  br label %65

65:                                               ; preds = %29, %27, %16
  %66 = load i64, i64* %4, align 8
  ret i64 %66
}

declare dso_local i64 @fh_verify(%struct.svc_rqst*, i32*, i32, i32) #1

declare dso_local i32 @nfsd_suppattrs0(i32) #1

declare dso_local i32 @nfsd_suppattrs1(i32) #1

declare dso_local i32 @nfsd_suppattrs2(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
