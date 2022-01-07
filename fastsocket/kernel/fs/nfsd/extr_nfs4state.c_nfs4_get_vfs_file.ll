; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs4state.c_nfs4_get_vfs_file.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs4state.c_nfs4_get_vfs_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { i32 }
%struct.nfs4_file = type { i32* }
%struct.svc_fh = type { i32 }

@S_IFREG = common dso_local global i32 0, align 4
@nfs_ok = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.svc_rqst*, %struct.nfs4_file*, %struct.svc_fh*, i32)* @nfs4_get_vfs_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @nfs4_get_vfs_file(%struct.svc_rqst* %0, %struct.nfs4_file* %1, %struct.svc_fh* %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.svc_rqst*, align 8
  %7 = alloca %struct.nfs4_file*, align 8
  %8 = alloca %struct.svc_fh*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.svc_rqst* %0, %struct.svc_rqst** %6, align 8
  store %struct.nfs4_file* %1, %struct.nfs4_file** %7, align 8
  store %struct.svc_fh* %2, %struct.svc_fh** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load i32, i32* %9, align 4
  %14 = call i32 @nfs4_access_to_omode(i32 %13)
  store i32 %14, i32* %11, align 4
  %15 = load i32, i32* %9, align 4
  %16 = call i32 @nfs4_access_to_access(i32 %15)
  store i32 %16, i32* %12, align 4
  %17 = load %struct.nfs4_file*, %struct.nfs4_file** %7, align 8
  %18 = getelementptr inbounds %struct.nfs4_file, %struct.nfs4_file* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = load i32, i32* %11, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %42, label %25

25:                                               ; preds = %4
  %26 = load %struct.svc_rqst*, %struct.svc_rqst** %6, align 8
  %27 = load %struct.svc_fh*, %struct.svc_fh** %8, align 8
  %28 = load i32, i32* @S_IFREG, align 4
  %29 = load i32, i32* %12, align 4
  %30 = load %struct.nfs4_file*, %struct.nfs4_file** %7, align 8
  %31 = getelementptr inbounds %struct.nfs4_file, %struct.nfs4_file* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* %11, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = call i64 @nfsd_open(%struct.svc_rqst* %26, %struct.svc_fh* %27, i32 %28, i32 %29, i32* %35)
  store i64 %36, i64* %10, align 8
  %37 = load i64, i64* %10, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %25
  %40 = load i64, i64* %10, align 8
  store i64 %40, i64* %5, align 8
  br label %47

41:                                               ; preds = %25
  br label %42

42:                                               ; preds = %41, %4
  %43 = load %struct.nfs4_file*, %struct.nfs4_file** %7, align 8
  %44 = load i32, i32* %11, align 4
  %45 = call i32 @nfs4_file_get_access(%struct.nfs4_file* %43, i32 %44)
  %46 = load i64, i64* @nfs_ok, align 8
  store i64 %46, i64* %5, align 8
  br label %47

47:                                               ; preds = %42, %39
  %48 = load i64, i64* %5, align 8
  ret i64 %48
}

declare dso_local i32 @nfs4_access_to_omode(i32) #1

declare dso_local i32 @nfs4_access_to_access(i32) #1

declare dso_local i64 @nfsd_open(%struct.svc_rqst*, %struct.svc_fh*, i32, i32, i32*) #1

declare dso_local i32 @nfs4_file_get_access(%struct.nfs4_file*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
