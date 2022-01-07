; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs4xdr.c_nfsd4_encode_fs_locations.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs4xdr.c_nfsd4_encode_fs_locations.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { i32 }
%struct.svc_export = type { %struct.nfsd4_fs_locations }
%struct.nfsd4_fs_locations = type { i32, i32* }

@nfserr_resource = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.svc_rqst*, %struct.svc_export*, i64**, i32*)* @nfsd4_encode_fs_locations to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @nfsd4_encode_fs_locations(%struct.svc_rqst* %0, %struct.svc_export* %1, i64** %2, i32* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.svc_rqst*, align 8
  %7 = alloca %struct.svc_export*, align 8
  %8 = alloca i64**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64*, align 8
  %13 = alloca %struct.nfsd4_fs_locations*, align 8
  %14 = alloca i8*, align 8
  store %struct.svc_rqst* %0, %struct.svc_rqst** %6, align 8
  store %struct.svc_export* %1, %struct.svc_export** %7, align 8
  store i64** %2, i64*** %8, align 8
  store i32* %3, i32** %9, align 8
  %15 = load i64**, i64*** %8, align 8
  %16 = load i64*, i64** %15, align 8
  store i64* %16, i64** %12, align 8
  %17 = load %struct.svc_export*, %struct.svc_export** %7, align 8
  %18 = getelementptr inbounds %struct.svc_export, %struct.svc_export* %17, i32 0, i32 0
  store %struct.nfsd4_fs_locations* %18, %struct.nfsd4_fs_locations** %13, align 8
  %19 = load %struct.svc_rqst*, %struct.svc_rqst** %6, align 8
  %20 = load %struct.svc_export*, %struct.svc_export** %7, align 8
  %21 = call i8* @nfsd4_path(%struct.svc_rqst* %19, %struct.svc_export* %20, i64* %10)
  store i8* %21, i8** %14, align 8
  %22 = load i64, i64* %10, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %4
  %25 = load i64, i64* %10, align 8
  store i64 %25, i64* %5, align 8
  br label %72

26:                                               ; preds = %4
  %27 = load i8*, i8** %14, align 8
  %28 = load i32*, i32** %9, align 8
  %29 = call i64 @nfsd4_encode_components(i8 signext 47, i8* %27, i64** %12, i32* %28)
  store i64 %29, i64* %10, align 8
  %30 = load i64, i64* %10, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %26
  %33 = load i64, i64* %10, align 8
  store i64 %33, i64* %5, align 8
  br label %72

34:                                               ; preds = %26
  %35 = load i32*, i32** %9, align 8
  %36 = load i32, i32* %35, align 4
  %37 = sub nsw i32 %36, 4
  store i32 %37, i32* %35, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = load i64, i64* @nfserr_resource, align 8
  store i64 %40, i64* %5, align 8
  br label %72

41:                                               ; preds = %34
  %42 = load %struct.nfsd4_fs_locations*, %struct.nfsd4_fs_locations** %13, align 8
  %43 = getelementptr inbounds %struct.nfsd4_fs_locations, %struct.nfsd4_fs_locations* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @WRITE32(i32 %44)
  store i32 0, i32* %11, align 4
  br label %46

46:                                               ; preds = %66, %41
  %47 = load i32, i32* %11, align 4
  %48 = load %struct.nfsd4_fs_locations*, %struct.nfsd4_fs_locations** %13, align 8
  %49 = getelementptr inbounds %struct.nfsd4_fs_locations, %struct.nfsd4_fs_locations* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp slt i32 %47, %50
  br i1 %51, label %52, label %69

52:                                               ; preds = %46
  %53 = load %struct.nfsd4_fs_locations*, %struct.nfsd4_fs_locations** %13, align 8
  %54 = getelementptr inbounds %struct.nfsd4_fs_locations, %struct.nfsd4_fs_locations* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %11, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load i32*, i32** %9, align 8
  %60 = call i64 @nfsd4_encode_fs_location4(i32* %58, i64** %12, i32* %59)
  store i64 %60, i64* %10, align 8
  %61 = load i64, i64* %10, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %52
  %64 = load i64, i64* %10, align 8
  store i64 %64, i64* %5, align 8
  br label %72

65:                                               ; preds = %52
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %11, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %11, align 4
  br label %46

69:                                               ; preds = %46
  %70 = load i64*, i64** %12, align 8
  %71 = load i64**, i64*** %8, align 8
  store i64* %70, i64** %71, align 8
  store i64 0, i64* %5, align 8
  br label %72

72:                                               ; preds = %69, %63, %39, %32, %24
  %73 = load i64, i64* %5, align 8
  ret i64 %73
}

declare dso_local i8* @nfsd4_path(%struct.svc_rqst*, %struct.svc_export*, i64*) #1

declare dso_local i64 @nfsd4_encode_components(i8 signext, i8*, i64**, i32*) #1

declare dso_local i32 @WRITE32(i32) #1

declare dso_local i64 @nfsd4_encode_fs_location4(i32*, i64**, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
