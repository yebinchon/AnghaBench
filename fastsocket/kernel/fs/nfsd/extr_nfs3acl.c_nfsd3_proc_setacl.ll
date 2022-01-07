; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs3acl.c_nfsd3_proc_setacl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs3acl.c_nfsd3_proc_setacl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { i32 }
%struct.nfsd3_setaclargs = type { i32, i32, i32 }
%struct.nfsd3_attrstat = type { i32 }

@NFSD_MAY_SATTR = common dso_local global i32 0, align 4
@ACL_TYPE_ACCESS = common dso_local global i32 0, align 4
@ACL_TYPE_DEFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.svc_rqst*, %struct.nfsd3_setaclargs*, %struct.nfsd3_attrstat*)* @nfsd3_proc_setacl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @nfsd3_proc_setacl(%struct.svc_rqst* %0, %struct.nfsd3_setaclargs* %1, %struct.nfsd3_attrstat* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.svc_rqst*, align 8
  %6 = alloca %struct.nfsd3_setaclargs*, align 8
  %7 = alloca %struct.nfsd3_attrstat*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  store %struct.svc_rqst* %0, %struct.svc_rqst** %5, align 8
  store %struct.nfsd3_setaclargs* %1, %struct.nfsd3_setaclargs** %6, align 8
  store %struct.nfsd3_attrstat* %2, %struct.nfsd3_attrstat** %7, align 8
  store i64 0, i64* %9, align 8
  %10 = load %struct.nfsd3_attrstat*, %struct.nfsd3_attrstat** %7, align 8
  %11 = getelementptr inbounds %struct.nfsd3_attrstat, %struct.nfsd3_attrstat* %10, i32 0, i32 0
  %12 = load %struct.nfsd3_setaclargs*, %struct.nfsd3_setaclargs** %6, align 8
  %13 = getelementptr inbounds %struct.nfsd3_setaclargs, %struct.nfsd3_setaclargs* %12, i32 0, i32 2
  %14 = call i32* @fh_copy(i32* %11, i32* %13)
  store i32* %14, i32** %8, align 8
  %15 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %16 = load %struct.nfsd3_attrstat*, %struct.nfsd3_attrstat** %7, align 8
  %17 = getelementptr inbounds %struct.nfsd3_attrstat, %struct.nfsd3_attrstat* %16, i32 0, i32 0
  %18 = load i32, i32* @NFSD_MAY_SATTR, align 4
  %19 = call i64 @fh_verify(%struct.svc_rqst* %15, i32* %17, i32 0, i32 %18)
  store i64 %19, i64* %9, align 8
  %20 = load i64, i64* %9, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %30, label %22

22:                                               ; preds = %3
  %23 = load i32*, i32** %8, align 8
  %24 = load i32, i32* @ACL_TYPE_ACCESS, align 4
  %25 = load %struct.nfsd3_setaclargs*, %struct.nfsd3_setaclargs** %6, align 8
  %26 = getelementptr inbounds %struct.nfsd3_setaclargs, %struct.nfsd3_setaclargs* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @nfsd_set_posix_acl(i32* %23, i32 %24, i32 %27)
  %29 = call i64 @nfserrno(i32 %28)
  store i64 %29, i64* %9, align 8
  br label %30

30:                                               ; preds = %22, %3
  %31 = load i64, i64* %9, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %41, label %33

33:                                               ; preds = %30
  %34 = load i32*, i32** %8, align 8
  %35 = load i32, i32* @ACL_TYPE_DEFAULT, align 4
  %36 = load %struct.nfsd3_setaclargs*, %struct.nfsd3_setaclargs** %6, align 8
  %37 = getelementptr inbounds %struct.nfsd3_setaclargs, %struct.nfsd3_setaclargs* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @nfsd_set_posix_acl(i32* %34, i32 %35, i32 %38)
  %40 = call i64 @nfserrno(i32 %39)
  store i64 %40, i64* %9, align 8
  br label %41

41:                                               ; preds = %33, %30
  %42 = load %struct.nfsd3_setaclargs*, %struct.nfsd3_setaclargs** %6, align 8
  %43 = getelementptr inbounds %struct.nfsd3_setaclargs, %struct.nfsd3_setaclargs* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @posix_acl_release(i32 %44)
  %46 = load %struct.nfsd3_setaclargs*, %struct.nfsd3_setaclargs** %6, align 8
  %47 = getelementptr inbounds %struct.nfsd3_setaclargs, %struct.nfsd3_setaclargs* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @posix_acl_release(i32 %48)
  %50 = load i64, i64* %9, align 8
  %51 = call i32 @RETURN_STATUS(i64 %50)
  %52 = load i64, i64* %4, align 8
  ret i64 %52
}

declare dso_local i32* @fh_copy(i32*, i32*) #1

declare dso_local i64 @fh_verify(%struct.svc_rqst*, i32*, i32, i32) #1

declare dso_local i64 @nfserrno(i32) #1

declare dso_local i32 @nfsd_set_posix_acl(i32*, i32, i32) #1

declare dso_local i32 @posix_acl_release(i32) #1

declare dso_local i32 @RETURN_STATUS(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
