; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_vfs.c_nfsd_readdir.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_vfs.c_nfsd_readdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { i32 }
%struct.svc_fh = type { i32 }
%struct.readdir_cd = type { i32 }
%struct.file = type { i32 }

@NFSD_MAY_READ = common dso_local global i32 0, align 4
@NFSD_MAY_64BIT_COOKIE = common dso_local global i32 0, align 4
@S_IFDIR = common dso_local global i32 0, align 4
@nfserr_eof = common dso_local global i64 0, align 8
@nfserr_toosmall = common dso_local global i64 0, align 8
@nfs_ok = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @nfsd_readdir(%struct.svc_rqst* %0, %struct.svc_fh* %1, i64* %2, %struct.readdir_cd* %3, i32 %4) #0 {
  %6 = alloca %struct.svc_rqst*, align 8
  %7 = alloca %struct.svc_fh*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca %struct.readdir_cd*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.file*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.svc_rqst* %0, %struct.svc_rqst** %6, align 8
  store %struct.svc_fh* %1, %struct.svc_fh** %7, align 8
  store i64* %2, i64** %8, align 8
  store %struct.readdir_cd* %3, %struct.readdir_cd** %9, align 8
  store i32 %4, i32* %10, align 4
  %15 = load i64*, i64** %8, align 8
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %13, align 8
  %17 = load i32, i32* @NFSD_MAY_READ, align 4
  store i32 %17, i32* %14, align 4
  %18 = load %struct.svc_rqst*, %struct.svc_rqst** %6, align 8
  %19 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp sgt i32 %20, 2
  br i1 %21, label %22, label %26

22:                                               ; preds = %5
  %23 = load i32, i32* @NFSD_MAY_64BIT_COOKIE, align 4
  %24 = load i32, i32* %14, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %14, align 4
  br label %26

26:                                               ; preds = %22, %5
  %27 = load %struct.svc_rqst*, %struct.svc_rqst** %6, align 8
  %28 = load %struct.svc_fh*, %struct.svc_fh** %7, align 8
  %29 = load i32, i32* @S_IFDIR, align 4
  %30 = load i32, i32* %14, align 4
  %31 = call i64 @nfsd_open(%struct.svc_rqst* %27, %struct.svc_fh* %28, i32 %29, i32 %30, %struct.file** %12)
  store i64 %31, i64* %11, align 8
  %32 = load i64, i64* %11, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %26
  br label %64

35:                                               ; preds = %26
  %36 = load %struct.file*, %struct.file** %12, align 8
  %37 = load i64, i64* %13, align 8
  %38 = call i64 @vfs_llseek(%struct.file* %36, i64 %37, i32 0)
  store i64 %38, i64* %13, align 8
  %39 = load i64, i64* %13, align 8
  %40 = icmp slt i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %35
  %42 = load i64, i64* %13, align 8
  %43 = trunc i64 %42 to i32
  %44 = call i64 @nfserrno(i32 %43)
  store i64 %44, i64* %11, align 8
  br label %61

45:                                               ; preds = %35
  %46 = load %struct.file*, %struct.file** %12, align 8
  %47 = load i32, i32* %10, align 4
  %48 = load %struct.readdir_cd*, %struct.readdir_cd** %9, align 8
  %49 = load i64*, i64** %8, align 8
  %50 = call i64 @nfsd_buffered_readdir(%struct.file* %46, i32 %47, %struct.readdir_cd* %48, i64* %49)
  store i64 %50, i64* %11, align 8
  %51 = load i64, i64* %11, align 8
  %52 = load i64, i64* @nfserr_eof, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %58, label %54

54:                                               ; preds = %45
  %55 = load i64, i64* %11, align 8
  %56 = load i64, i64* @nfserr_toosmall, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %54, %45
  %59 = load i64, i64* @nfs_ok, align 8
  store i64 %59, i64* %11, align 8
  br label %60

60:                                               ; preds = %58, %54
  br label %61

61:                                               ; preds = %60, %41
  %62 = load %struct.file*, %struct.file** %12, align 8
  %63 = call i32 @nfsd_close(%struct.file* %62)
  br label %64

64:                                               ; preds = %61, %34
  %65 = load i64, i64* %11, align 8
  ret i64 %65
}

declare dso_local i64 @nfsd_open(%struct.svc_rqst*, %struct.svc_fh*, i32, i32, %struct.file**) #1

declare dso_local i64 @vfs_llseek(%struct.file*, i64, i32) #1

declare dso_local i64 @nfserrno(i32) #1

declare dso_local i64 @nfsd_buffered_readdir(%struct.file*, i32, %struct.readdir_cd*, i64*) #1

declare dso_local i32 @nfsd_close(%struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
