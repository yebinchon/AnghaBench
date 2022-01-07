; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_vfs.c_nfsd_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_vfs.c_nfsd_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { i32 }
%struct.svc_fh = type { i32, i32 }
%struct.file = type { i32 }
%struct.kvec = type { i32 }

@NFSD_MAY_WRITE = common dso_local global i32 0, align 4
@NFSD_MAY_OWNER_OVERRIDE = common dso_local global i32 0, align 4
@S_IFREG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @nfsd_write(%struct.svc_rqst* %0, %struct.svc_fh* %1, %struct.file* %2, i32 %3, %struct.kvec* %4, i32 %5, i64* %6, i32* %7) #0 {
  %9 = alloca %struct.svc_rqst*, align 8
  %10 = alloca %struct.svc_fh*, align 8
  %11 = alloca %struct.file*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.kvec*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i64, align 8
  store %struct.svc_rqst* %0, %struct.svc_rqst** %9, align 8
  store %struct.svc_fh* %1, %struct.svc_fh** %10, align 8
  store %struct.file* %2, %struct.file** %11, align 8
  store i32 %3, i32* %12, align 4
  store %struct.kvec* %4, %struct.kvec** %13, align 8
  store i32 %5, i32* %14, align 4
  store i64* %6, i64** %15, align 8
  store i32* %7, i32** %16, align 8
  store i64 0, i64* %17, align 8
  %18 = load %struct.file*, %struct.file** %11, align 8
  %19 = icmp ne %struct.file* %18, null
  br i1 %19, label %20, label %45

20:                                               ; preds = %8
  %21 = load %struct.svc_rqst*, %struct.svc_rqst** %9, align 8
  %22 = load %struct.svc_fh*, %struct.svc_fh** %10, align 8
  %23 = getelementptr inbounds %struct.svc_fh, %struct.svc_fh* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.svc_fh*, %struct.svc_fh** %10, align 8
  %26 = getelementptr inbounds %struct.svc_fh, %struct.svc_fh* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @NFSD_MAY_WRITE, align 4
  %29 = load i32, i32* @NFSD_MAY_OWNER_OVERRIDE, align 4
  %30 = or i32 %28, %29
  %31 = call i64 @nfsd_permission(%struct.svc_rqst* %21, i32 %24, i32 %27, i32 %30)
  store i64 %31, i64* %17, align 8
  %32 = load i64, i64* %17, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %20
  br label %71

35:                                               ; preds = %20
  %36 = load %struct.svc_rqst*, %struct.svc_rqst** %9, align 8
  %37 = load %struct.svc_fh*, %struct.svc_fh** %10, align 8
  %38 = load %struct.file*, %struct.file** %11, align 8
  %39 = load i32, i32* %12, align 4
  %40 = load %struct.kvec*, %struct.kvec** %13, align 8
  %41 = load i32, i32* %14, align 4
  %42 = load i64*, i64** %15, align 8
  %43 = load i32*, i32** %16, align 8
  %44 = call i64 @nfsd_vfs_write(%struct.svc_rqst* %36, %struct.svc_fh* %37, %struct.file* %38, i32 %39, %struct.kvec* %40, i32 %41, i64* %42, i32* %43)
  store i64 %44, i64* %17, align 8
  br label %70

45:                                               ; preds = %8
  %46 = load %struct.svc_rqst*, %struct.svc_rqst** %9, align 8
  %47 = load %struct.svc_fh*, %struct.svc_fh** %10, align 8
  %48 = load i32, i32* @S_IFREG, align 4
  %49 = load i32, i32* @NFSD_MAY_WRITE, align 4
  %50 = call i64 @nfsd_open(%struct.svc_rqst* %46, %struct.svc_fh* %47, i32 %48, i32 %49, %struct.file** %11)
  store i64 %50, i64* %17, align 8
  %51 = load i64, i64* %17, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %45
  br label %71

54:                                               ; preds = %45
  %55 = load i64*, i64** %15, align 8
  %56 = icmp ne i64* %55, null
  br i1 %56, label %57, label %67

57:                                               ; preds = %54
  %58 = load %struct.svc_rqst*, %struct.svc_rqst** %9, align 8
  %59 = load %struct.svc_fh*, %struct.svc_fh** %10, align 8
  %60 = load %struct.file*, %struct.file** %11, align 8
  %61 = load i32, i32* %12, align 4
  %62 = load %struct.kvec*, %struct.kvec** %13, align 8
  %63 = load i32, i32* %14, align 4
  %64 = load i64*, i64** %15, align 8
  %65 = load i32*, i32** %16, align 8
  %66 = call i64 @nfsd_vfs_write(%struct.svc_rqst* %58, %struct.svc_fh* %59, %struct.file* %60, i32 %61, %struct.kvec* %62, i32 %63, i64* %64, i32* %65)
  store i64 %66, i64* %17, align 8
  br label %67

67:                                               ; preds = %57, %54
  %68 = load %struct.file*, %struct.file** %11, align 8
  %69 = call i32 @nfsd_close(%struct.file* %68)
  br label %70

70:                                               ; preds = %67, %35
  br label %71

71:                                               ; preds = %70, %53, %34
  %72 = load i64, i64* %17, align 8
  ret i64 %72
}

declare dso_local i64 @nfsd_permission(%struct.svc_rqst*, i32, i32, i32) #1

declare dso_local i64 @nfsd_vfs_write(%struct.svc_rqst*, %struct.svc_fh*, %struct.file*, i32, %struct.kvec*, i32, i64*, i32*) #1

declare dso_local i64 @nfsd_open(%struct.svc_rqst*, %struct.svc_fh*, i32, i32, %struct.file**) #1

declare dso_local i32 @nfsd_close(%struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
