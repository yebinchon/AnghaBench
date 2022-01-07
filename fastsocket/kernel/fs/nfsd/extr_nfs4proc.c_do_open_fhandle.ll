; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs4proc.c_do_open_fhandle.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs4proc.c_do_open_fhandle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { i32 }
%struct.svc_fh = type { i32 }
%struct.nfsd4_open = type { i32, %struct.TYPE_6__, %struct.TYPE_5__*, i32, i32 }
%struct.TYPE_6__ = type { i32, i64 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@ATTR_SIZE = common dso_local global i32 0, align 4
@NFSD_MAY_OWNER_OVERRIDE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.svc_rqst*, %struct.svc_fh*, %struct.nfsd4_open*)* @do_open_fhandle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_open_fhandle(%struct.svc_rqst* %0, %struct.svc_fh* %1, %struct.nfsd4_open* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.svc_rqst*, align 8
  %6 = alloca %struct.svc_fh*, align 8
  %7 = alloca %struct.nfsd4_open*, align 8
  %8 = alloca i32, align 4
  store %struct.svc_rqst* %0, %struct.svc_rqst** %5, align 8
  store %struct.svc_fh* %1, %struct.svc_fh** %6, align 8
  store %struct.nfsd4_open* %2, %struct.nfsd4_open** %7, align 8
  %9 = load %struct.nfsd4_open*, %struct.nfsd4_open** %7, align 8
  %10 = getelementptr inbounds %struct.nfsd4_open, %struct.nfsd4_open* %9, i32 0, i32 4
  %11 = call i32 @nfs4_check_open_reclaim(i32* %10)
  store i32 %11, i32* %8, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %3
  %14 = load i32, i32* %8, align 4
  store i32 %14, i32* %4, align 4
  br label %51

15:                                               ; preds = %3
  %16 = load %struct.nfsd4_open*, %struct.nfsd4_open** %7, align 8
  %17 = getelementptr inbounds %struct.nfsd4_open, %struct.nfsd4_open* %16, i32 0, i32 3
  %18 = call i32 @memset(i32* %17, i32 0, i32 4)
  %19 = load %struct.nfsd4_open*, %struct.nfsd4_open** %7, align 8
  %20 = getelementptr inbounds %struct.nfsd4_open, %struct.nfsd4_open* %19, i32 0, i32 2
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load %struct.svc_fh*, %struct.svc_fh** %6, align 8
  %25 = getelementptr inbounds %struct.svc_fh, %struct.svc_fh* %24, i32 0, i32 0
  %26 = call i32 @fh_copy_shallow(i32* %23, i32* %25)
  %27 = load %struct.nfsd4_open*, %struct.nfsd4_open** %7, align 8
  %28 = getelementptr inbounds %struct.nfsd4_open, %struct.nfsd4_open* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @ATTR_SIZE, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %15
  %35 = load %struct.nfsd4_open*, %struct.nfsd4_open** %7, align 8
  %36 = getelementptr inbounds %struct.nfsd4_open, %struct.nfsd4_open* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp eq i64 %38, 0
  br label %40

40:                                               ; preds = %34, %15
  %41 = phi i1 [ false, %15 ], [ %39, %34 ]
  %42 = zext i1 %41 to i32
  %43 = load %struct.nfsd4_open*, %struct.nfsd4_open** %7, align 8
  %44 = getelementptr inbounds %struct.nfsd4_open, %struct.nfsd4_open* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  %45 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %46 = load %struct.svc_fh*, %struct.svc_fh** %6, align 8
  %47 = load %struct.nfsd4_open*, %struct.nfsd4_open** %7, align 8
  %48 = load i32, i32* @NFSD_MAY_OWNER_OVERRIDE, align 4
  %49 = call i32 @do_open_permission(%struct.svc_rqst* %45, %struct.svc_fh* %46, %struct.nfsd4_open* %47, i32 %48)
  store i32 %49, i32* %8, align 4
  %50 = load i32, i32* %8, align 4
  store i32 %50, i32* %4, align 4
  br label %51

51:                                               ; preds = %40, %13
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

declare dso_local i32 @nfs4_check_open_reclaim(i32*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @fh_copy_shallow(i32*, i32*) #1

declare dso_local i32 @do_open_permission(%struct.svc_rqst*, %struct.svc_fh*, %struct.nfsd4_open*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
