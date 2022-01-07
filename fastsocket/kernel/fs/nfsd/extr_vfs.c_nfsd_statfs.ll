; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_vfs.c_nfsd_statfs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_vfs.c_nfsd_statfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { i32 }
%struct.svc_fh = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.kstatfs = type { i32 }
%struct.path = type { i32, i32 }

@NFSD_MAY_NOP = common dso_local global i32 0, align 4
@nfserr_io = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @nfsd_statfs(%struct.svc_rqst* %0, %struct.svc_fh* %1, %struct.kstatfs* %2, i32 %3) #0 {
  %5 = alloca %struct.svc_rqst*, align 8
  %6 = alloca %struct.svc_fh*, align 8
  %7 = alloca %struct.kstatfs*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.path, align 4
  store %struct.svc_rqst* %0, %struct.svc_rqst** %5, align 8
  store %struct.svc_fh* %1, %struct.svc_fh** %6, align 8
  store %struct.kstatfs* %2, %struct.kstatfs** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %12 = load %struct.svc_fh*, %struct.svc_fh** %6, align 8
  %13 = load i32, i32* @NFSD_MAY_NOP, align 4
  %14 = load i32, i32* %8, align 4
  %15 = or i32 %13, %14
  %16 = call i64 @fh_verify(%struct.svc_rqst* %11, %struct.svc_fh* %12, i32 0, i32 %15)
  store i64 %16, i64* %9, align 8
  %17 = load i64, i64* %9, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %37, label %19

19:                                               ; preds = %4
  %20 = getelementptr inbounds %struct.path, %struct.path* %10, i32 0, i32 0
  %21 = load %struct.svc_fh*, %struct.svc_fh** %6, align 8
  %22 = getelementptr inbounds %struct.svc_fh, %struct.svc_fh* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %20, align 4
  %24 = getelementptr inbounds %struct.path, %struct.path* %10, i32 0, i32 1
  %25 = load %struct.svc_fh*, %struct.svc_fh** %6, align 8
  %26 = getelementptr inbounds %struct.svc_fh, %struct.svc_fh* %25, i32 0, i32 1
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %24, align 4
  %31 = load %struct.kstatfs*, %struct.kstatfs** %7, align 8
  %32 = call i64 @vfs_statfs(%struct.path* %10, %struct.kstatfs* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %19
  %35 = load i64, i64* @nfserr_io, align 8
  store i64 %35, i64* %9, align 8
  br label %36

36:                                               ; preds = %34, %19
  br label %37

37:                                               ; preds = %36, %4
  %38 = load i64, i64* %9, align 8
  ret i64 %38
}

declare dso_local i64 @fh_verify(%struct.svc_rqst*, %struct.svc_fh*, i32, i32) #1

declare dso_local i64 @vfs_statfs(%struct.path*, %struct.kstatfs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
