; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs2acl.c_nfsacld_proc_setacl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs2acl.c_nfsacld_proc_setacl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { i32 }
%struct.nfsd3_setaclargs = type { i32, i32, i32 }
%struct.nfsd_attrstat = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"nfsd: SETACL(2acl)   %s\0A\00", align 1
@NFSD_MAY_SATTR = common dso_local global i32 0, align 4
@ACL_TYPE_ACCESS = common dso_local global i32 0, align 4
@ACL_TYPE_DEFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.svc_rqst*, %struct.nfsd3_setaclargs*, %struct.nfsd_attrstat*)* @nfsacld_proc_setacl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @nfsacld_proc_setacl(%struct.svc_rqst* %0, %struct.nfsd3_setaclargs* %1, %struct.nfsd_attrstat* %2) #0 {
  %4 = alloca %struct.svc_rqst*, align 8
  %5 = alloca %struct.nfsd3_setaclargs*, align 8
  %6 = alloca %struct.nfsd_attrstat*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  store %struct.svc_rqst* %0, %struct.svc_rqst** %4, align 8
  store %struct.nfsd3_setaclargs* %1, %struct.nfsd3_setaclargs** %5, align 8
  store %struct.nfsd_attrstat* %2, %struct.nfsd_attrstat** %6, align 8
  store i64 0, i64* %8, align 8
  %9 = load %struct.nfsd3_setaclargs*, %struct.nfsd3_setaclargs** %5, align 8
  %10 = getelementptr inbounds %struct.nfsd3_setaclargs, %struct.nfsd3_setaclargs* %9, i32 0, i32 2
  %11 = call i32 @SVCFH_fmt(i32* %10)
  %12 = call i32 @dprintk(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = load %struct.nfsd_attrstat*, %struct.nfsd_attrstat** %6, align 8
  %14 = getelementptr inbounds %struct.nfsd_attrstat, %struct.nfsd_attrstat* %13, i32 0, i32 0
  %15 = load %struct.nfsd3_setaclargs*, %struct.nfsd3_setaclargs** %5, align 8
  %16 = getelementptr inbounds %struct.nfsd3_setaclargs, %struct.nfsd3_setaclargs* %15, i32 0, i32 2
  %17 = call i32* @fh_copy(i32* %14, i32* %16)
  store i32* %17, i32** %7, align 8
  %18 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %19 = load %struct.nfsd_attrstat*, %struct.nfsd_attrstat** %6, align 8
  %20 = getelementptr inbounds %struct.nfsd_attrstat, %struct.nfsd_attrstat* %19, i32 0, i32 0
  %21 = load i32, i32* @NFSD_MAY_SATTR, align 4
  %22 = call i64 @fh_verify(%struct.svc_rqst* %18, i32* %20, i32 0, i32 %21)
  store i64 %22, i64* %8, align 8
  %23 = load i64, i64* %8, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %33, label %25

25:                                               ; preds = %3
  %26 = load i32*, i32** %7, align 8
  %27 = load i32, i32* @ACL_TYPE_ACCESS, align 4
  %28 = load %struct.nfsd3_setaclargs*, %struct.nfsd3_setaclargs** %5, align 8
  %29 = getelementptr inbounds %struct.nfsd3_setaclargs, %struct.nfsd3_setaclargs* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @nfsd_set_posix_acl(i32* %26, i32 %27, i32 %30)
  %32 = call i64 @nfserrno(i32 %31)
  store i64 %32, i64* %8, align 8
  br label %33

33:                                               ; preds = %25, %3
  %34 = load i64, i64* %8, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %44, label %36

36:                                               ; preds = %33
  %37 = load i32*, i32** %7, align 8
  %38 = load i32, i32* @ACL_TYPE_DEFAULT, align 4
  %39 = load %struct.nfsd3_setaclargs*, %struct.nfsd3_setaclargs** %5, align 8
  %40 = getelementptr inbounds %struct.nfsd3_setaclargs, %struct.nfsd3_setaclargs* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @nfsd_set_posix_acl(i32* %37, i32 %38, i32 %41)
  %43 = call i64 @nfserrno(i32 %42)
  store i64 %43, i64* %8, align 8
  br label %44

44:                                               ; preds = %36, %33
  %45 = load %struct.nfsd3_setaclargs*, %struct.nfsd3_setaclargs** %5, align 8
  %46 = getelementptr inbounds %struct.nfsd3_setaclargs, %struct.nfsd3_setaclargs* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @posix_acl_release(i32 %47)
  %49 = load %struct.nfsd3_setaclargs*, %struct.nfsd3_setaclargs** %5, align 8
  %50 = getelementptr inbounds %struct.nfsd3_setaclargs, %struct.nfsd3_setaclargs* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @posix_acl_release(i32 %51)
  %53 = load i64, i64* %8, align 8
  ret i64 %53
}

declare dso_local i32 @dprintk(i8*, i32) #1

declare dso_local i32 @SVCFH_fmt(i32*) #1

declare dso_local i32* @fh_copy(i32*, i32*) #1

declare dso_local i64 @fh_verify(%struct.svc_rqst*, i32*, i32, i32) #1

declare dso_local i64 @nfserrno(i32) #1

declare dso_local i32 @nfsd_set_posix_acl(i32*, i32, i32) #1

declare dso_local i32 @posix_acl_release(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
