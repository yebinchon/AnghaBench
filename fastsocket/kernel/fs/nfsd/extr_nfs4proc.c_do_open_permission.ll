; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs4proc.c_do_open_permission.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs4proc.c_do_open_permission.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { i32 }
%struct.svc_fh = type { i32 }
%struct.nfsd4_open = type { i32, i32, i64 }

@NFS4_SHARE_ACCESS_WRITE = common dso_local global i32 0, align 4
@nfserr_inval = common dso_local global i32 0, align 4
@NFSD_MAY_READ_IF_EXEC = common dso_local global i32 0, align 4
@NFS4_SHARE_ACCESS_READ = common dso_local global i32 0, align 4
@NFSD_MAY_READ = common dso_local global i32 0, align 4
@NFSD_MAY_WRITE = common dso_local global i32 0, align 4
@NFSD_MAY_TRUNC = common dso_local global i32 0, align 4
@NFS4_SHARE_DENY_READ = common dso_local global i32 0, align 4
@S_IFREG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.svc_rqst*, %struct.svc_fh*, %struct.nfsd4_open*, i32)* @do_open_permission to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_open_permission(%struct.svc_rqst* %0, %struct.svc_fh* %1, %struct.nfsd4_open* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.svc_rqst*, align 8
  %7 = alloca %struct.svc_fh*, align 8
  %8 = alloca %struct.nfsd4_open*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.svc_rqst* %0, %struct.svc_rqst** %6, align 8
  store %struct.svc_fh* %1, %struct.svc_fh** %7, align 8
  store %struct.nfsd4_open* %2, %struct.nfsd4_open** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load %struct.nfsd4_open*, %struct.nfsd4_open** %8, align 8
  %12 = getelementptr inbounds %struct.nfsd4_open, %struct.nfsd4_open* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %24

15:                                               ; preds = %4
  %16 = load %struct.nfsd4_open*, %struct.nfsd4_open** %8, align 8
  %17 = getelementptr inbounds %struct.nfsd4_open, %struct.nfsd4_open* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @NFS4_SHARE_ACCESS_WRITE, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %15
  %23 = load i32, i32* @nfserr_inval, align 4
  store i32 %23, i32* %5, align 4
  br label %69

24:                                               ; preds = %15, %4
  %25 = load i32, i32* @NFSD_MAY_READ_IF_EXEC, align 4
  %26 = load i32, i32* %9, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %9, align 4
  %28 = load %struct.nfsd4_open*, %struct.nfsd4_open** %8, align 8
  %29 = getelementptr inbounds %struct.nfsd4_open, %struct.nfsd4_open* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @NFS4_SHARE_ACCESS_READ, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %24
  %35 = load i32, i32* @NFSD_MAY_READ, align 4
  %36 = load i32, i32* %9, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %9, align 4
  br label %38

38:                                               ; preds = %34, %24
  %39 = load %struct.nfsd4_open*, %struct.nfsd4_open** %8, align 8
  %40 = getelementptr inbounds %struct.nfsd4_open, %struct.nfsd4_open* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @NFS4_SHARE_ACCESS_WRITE, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %38
  %46 = load i32, i32* @NFSD_MAY_WRITE, align 4
  %47 = load i32, i32* @NFSD_MAY_TRUNC, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* %9, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %9, align 4
  br label %51

51:                                               ; preds = %45, %38
  %52 = load %struct.nfsd4_open*, %struct.nfsd4_open** %8, align 8
  %53 = getelementptr inbounds %struct.nfsd4_open, %struct.nfsd4_open* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @NFS4_SHARE_DENY_READ, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %51
  %59 = load i32, i32* @NFSD_MAY_WRITE, align 4
  %60 = load i32, i32* %9, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %9, align 4
  br label %62

62:                                               ; preds = %58, %51
  %63 = load %struct.svc_rqst*, %struct.svc_rqst** %6, align 8
  %64 = load %struct.svc_fh*, %struct.svc_fh** %7, align 8
  %65 = load i32, i32* @S_IFREG, align 4
  %66 = load i32, i32* %9, align 4
  %67 = call i32 @fh_verify(%struct.svc_rqst* %63, %struct.svc_fh* %64, i32 %65, i32 %66)
  store i32 %67, i32* %10, align 4
  %68 = load i32, i32* %10, align 4
  store i32 %68, i32* %5, align 4
  br label %69

69:                                               ; preds = %62, %22
  %70 = load i32, i32* %5, align 4
  ret i32 %70
}

declare dso_local i32 @fh_verify(%struct.svc_rqst*, %struct.svc_fh*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
