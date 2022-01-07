; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs4proc.c_nfsd4_readdir.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs4proc.c_nfsd4_readdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.svc_rqst = type { i32 }
%struct.nfsd4_compound_state = type { i32, i32 }
%struct.nfsd4_readdir = type { i32, i32*, i32*, %struct.svc_rqst*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@nfsd4_readdir.zeroverf = internal constant %struct.TYPE_4__ zeroinitializer, align 4
@NFSD_WRITEONLY_ATTRS_WORD1 = common dso_local global i32 0, align 4
@nfserr_inval = common dso_local global i32 0, align 4
@NFS4_VERIFIER_SIZE = common dso_local global i32 0, align 4
@nfserr_bad_cookie = common dso_local global i32 0, align 4
@nfs_ok = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.svc_rqst*, %struct.nfsd4_compound_state*, %struct.nfsd4_readdir*)* @nfsd4_readdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfsd4_readdir(%struct.svc_rqst* %0, %struct.nfsd4_compound_state* %1, %struct.nfsd4_readdir* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.svc_rqst*, align 8
  %6 = alloca %struct.nfsd4_compound_state*, align 8
  %7 = alloca %struct.nfsd4_readdir*, align 8
  %8 = alloca i32, align 4
  store %struct.svc_rqst* %0, %struct.svc_rqst** %5, align 8
  store %struct.nfsd4_compound_state* %1, %struct.nfsd4_compound_state** %6, align 8
  store %struct.nfsd4_readdir* %2, %struct.nfsd4_readdir** %7, align 8
  %9 = load %struct.nfsd4_readdir*, %struct.nfsd4_readdir** %7, align 8
  %10 = getelementptr inbounds %struct.nfsd4_readdir, %struct.nfsd4_readdir* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %8, align 4
  %12 = load %struct.nfsd4_readdir*, %struct.nfsd4_readdir** %7, align 8
  %13 = getelementptr inbounds %struct.nfsd4_readdir, %struct.nfsd4_readdir* %12, i32 0, i32 1
  %14 = load i32*, i32** %13, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 1
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @NFSD_WRITEONLY_ATTRS_WORD1, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %3
  %21 = load i32, i32* @nfserr_inval, align 4
  store i32 %21, i32* %4, align 4
  br label %81

22:                                               ; preds = %3
  %23 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %6, align 8
  %24 = getelementptr inbounds %struct.nfsd4_compound_state, %struct.nfsd4_compound_state* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @nfsd_suppattrs0(i32 %25)
  %27 = load %struct.nfsd4_readdir*, %struct.nfsd4_readdir** %7, align 8
  %28 = getelementptr inbounds %struct.nfsd4_readdir, %struct.nfsd4_readdir* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  %31 = load i32, i32* %30, align 4
  %32 = and i32 %31, %26
  store i32 %32, i32* %30, align 4
  %33 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %6, align 8
  %34 = getelementptr inbounds %struct.nfsd4_compound_state, %struct.nfsd4_compound_state* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @nfsd_suppattrs1(i32 %35)
  %37 = load %struct.nfsd4_readdir*, %struct.nfsd4_readdir** %7, align 8
  %38 = getelementptr inbounds %struct.nfsd4_readdir, %struct.nfsd4_readdir* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 1
  %41 = load i32, i32* %40, align 4
  %42 = and i32 %41, %36
  store i32 %42, i32* %40, align 4
  %43 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %6, align 8
  %44 = getelementptr inbounds %struct.nfsd4_compound_state, %struct.nfsd4_compound_state* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @nfsd_suppattrs2(i32 %45)
  %47 = load %struct.nfsd4_readdir*, %struct.nfsd4_readdir** %7, align 8
  %48 = getelementptr inbounds %struct.nfsd4_readdir, %struct.nfsd4_readdir* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 2
  %51 = load i32, i32* %50, align 4
  %52 = and i32 %51, %46
  store i32 %52, i32* %50, align 4
  %53 = load i32, i32* %8, align 4
  %54 = icmp eq i32 %53, 1
  br i1 %54, label %70, label %55

55:                                               ; preds = %22
  %56 = load i32, i32* %8, align 4
  %57 = icmp eq i32 %56, 2
  br i1 %57, label %70, label %58

58:                                               ; preds = %55
  %59 = load i32, i32* %8, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %72

61:                                               ; preds = %58
  %62 = load %struct.nfsd4_readdir*, %struct.nfsd4_readdir** %7, align 8
  %63 = getelementptr inbounds %struct.nfsd4_readdir, %struct.nfsd4_readdir* %62, i32 0, i32 4
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @nfsd4_readdir.zeroverf, i32 0, i32 0), align 4
  %67 = load i32, i32* @NFS4_VERIFIER_SIZE, align 4
  %68 = call i64 @memcmp(i32 %65, i32 %66, i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %61, %55, %22
  %71 = load i32, i32* @nfserr_bad_cookie, align 4
  store i32 %71, i32* %4, align 4
  br label %81

72:                                               ; preds = %61, %58
  %73 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %74 = load %struct.nfsd4_readdir*, %struct.nfsd4_readdir** %7, align 8
  %75 = getelementptr inbounds %struct.nfsd4_readdir, %struct.nfsd4_readdir* %74, i32 0, i32 3
  store %struct.svc_rqst* %73, %struct.svc_rqst** %75, align 8
  %76 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %6, align 8
  %77 = getelementptr inbounds %struct.nfsd4_compound_state, %struct.nfsd4_compound_state* %76, i32 0, i32 0
  %78 = load %struct.nfsd4_readdir*, %struct.nfsd4_readdir** %7, align 8
  %79 = getelementptr inbounds %struct.nfsd4_readdir, %struct.nfsd4_readdir* %78, i32 0, i32 2
  store i32* %77, i32** %79, align 8
  %80 = load i32, i32* @nfs_ok, align 4
  store i32 %80, i32* %4, align 4
  br label %81

81:                                               ; preds = %72, %70, %20
  %82 = load i32, i32* %4, align 4
  ret i32 %82
}

declare dso_local i32 @nfsd_suppattrs0(i32) #1

declare dso_local i32 @nfsd_suppattrs1(i32) #1

declare dso_local i32 @nfsd_suppattrs2(i32) #1

declare dso_local i64 @memcmp(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
