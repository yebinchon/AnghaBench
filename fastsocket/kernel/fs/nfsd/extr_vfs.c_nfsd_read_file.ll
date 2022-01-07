; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_vfs.c_nfsd_read_file.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_vfs.c_nfsd_read_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { i32 }
%struct.svc_fh = type { i32, i32 }
%struct.file = type { i32 }
%struct.kvec = type { i32 }

@NFSD_MAY_READ = common dso_local global i32 0, align 4
@NFSD_MAY_OWNER_OVERRIDE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @nfsd_read_file(%struct.svc_rqst* %0, %struct.svc_fh* %1, %struct.file* %2, i32 %3, %struct.kvec* %4, i32 %5, i64* %6) #0 {
  %8 = alloca %struct.svc_rqst*, align 8
  %9 = alloca %struct.svc_fh*, align 8
  %10 = alloca %struct.file*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.kvec*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64*, align 8
  %15 = alloca i64, align 8
  store %struct.svc_rqst* %0, %struct.svc_rqst** %8, align 8
  store %struct.svc_fh* %1, %struct.svc_fh** %9, align 8
  store %struct.file* %2, %struct.file** %10, align 8
  store i32 %3, i32* %11, align 4
  store %struct.kvec* %4, %struct.kvec** %12, align 8
  store i32 %5, i32* %13, align 4
  store i64* %6, i64** %14, align 8
  %16 = load %struct.file*, %struct.file** %10, align 8
  %17 = icmp ne %struct.file* %16, null
  br i1 %17, label %18, label %42

18:                                               ; preds = %7
  %19 = load %struct.svc_rqst*, %struct.svc_rqst** %8, align 8
  %20 = load %struct.svc_fh*, %struct.svc_fh** %9, align 8
  %21 = getelementptr inbounds %struct.svc_fh, %struct.svc_fh* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.svc_fh*, %struct.svc_fh** %9, align 8
  %24 = getelementptr inbounds %struct.svc_fh, %struct.svc_fh* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @NFSD_MAY_READ, align 4
  %27 = load i32, i32* @NFSD_MAY_OWNER_OVERRIDE, align 4
  %28 = or i32 %26, %27
  %29 = call i64 @nfsd_permission(%struct.svc_rqst* %19, i32 %22, i32 %25, i32 %28)
  store i64 %29, i64* %15, align 8
  %30 = load i64, i64* %15, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %18
  br label %51

33:                                               ; preds = %18
  %34 = load %struct.svc_rqst*, %struct.svc_rqst** %8, align 8
  %35 = load %struct.svc_fh*, %struct.svc_fh** %9, align 8
  %36 = load %struct.file*, %struct.file** %10, align 8
  %37 = load i32, i32* %11, align 4
  %38 = load %struct.kvec*, %struct.kvec** %12, align 8
  %39 = load i32, i32* %13, align 4
  %40 = load i64*, i64** %14, align 8
  %41 = call i64 @nfsd_vfs_read(%struct.svc_rqst* %34, %struct.svc_fh* %35, %struct.file* %36, i32 %37, %struct.kvec* %38, i32 %39, i64* %40)
  store i64 %41, i64* %15, align 8
  br label %50

42:                                               ; preds = %7
  %43 = load %struct.svc_rqst*, %struct.svc_rqst** %8, align 8
  %44 = load %struct.svc_fh*, %struct.svc_fh** %9, align 8
  %45 = load i32, i32* %11, align 4
  %46 = load %struct.kvec*, %struct.kvec** %12, align 8
  %47 = load i32, i32* %13, align 4
  %48 = load i64*, i64** %14, align 8
  %49 = call i64 @nfsd_read(%struct.svc_rqst* %43, %struct.svc_fh* %44, i32 %45, %struct.kvec* %46, i32 %47, i64* %48)
  store i64 %49, i64* %15, align 8
  br label %50

50:                                               ; preds = %42, %33
  br label %51

51:                                               ; preds = %50, %32
  %52 = load i64, i64* %15, align 8
  ret i64 %52
}

declare dso_local i64 @nfsd_permission(%struct.svc_rqst*, i32, i32, i32) #1

declare dso_local i64 @nfsd_vfs_read(%struct.svc_rqst*, %struct.svc_fh*, %struct.file*, i32, %struct.kvec*, i32, i64*) #1

declare dso_local i64 @nfsd_read(%struct.svc_rqst*, %struct.svc_fh*, i32, %struct.kvec*, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
