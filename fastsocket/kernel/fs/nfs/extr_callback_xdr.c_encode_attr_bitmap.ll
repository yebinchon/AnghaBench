; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_callback_xdr.c_encode_attr_bitmap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_callback_xdr.c_encode_attr_bitmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xdr_stream = type { i32 }

@CB_SUPPORTED_ATTR0 = common dso_local global i32 0, align 4
@CB_SUPPORTED_ATTR1 = common dso_local global i32 0, align 4
@NFS4ERR_RESOURCE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.xdr_stream*, i32*, i64**)* @encode_attr_bitmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @encode_attr_bitmap(%struct.xdr_stream* %0, i32* %1, i64** %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.xdr_stream*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64**, align 8
  %8 = alloca [2 x i64], align 16
  %9 = alloca i64*, align 8
  store %struct.xdr_stream* %0, %struct.xdr_stream** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64** %2, i64*** %7, align 8
  %10 = load i32*, i32** %6, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @CB_SUPPORTED_ATTR0, align 4
  %14 = and i32 %12, %13
  %15 = call i64 @htonl(i32 %14)
  %16 = getelementptr inbounds [2 x i64], [2 x i64]* %8, i64 0, i64 0
  store i64 %15, i64* %16, align 16
  %17 = load i32*, i32** %6, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 1
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @CB_SUPPORTED_ATTR1, align 4
  %21 = and i32 %19, %20
  %22 = call i64 @htonl(i32 %21)
  %23 = getelementptr inbounds [2 x i64], [2 x i64]* %8, i64 0, i64 1
  store i64 %22, i64* %23, align 8
  %24 = getelementptr inbounds [2 x i64], [2 x i64]* %8, i64 0, i64 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %50

27:                                               ; preds = %3
  %28 = load %struct.xdr_stream*, %struct.xdr_stream** %5, align 8
  %29 = call i64* @xdr_reserve_space(%struct.xdr_stream* %28, i32 16)
  store i64* %29, i64** %9, align 8
  %30 = load i64*, i64** %9, align 8
  %31 = icmp eq i64* %30, null
  %32 = zext i1 %31 to i32
  %33 = call i64 @unlikely(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %27
  %36 = load i32, i32* @NFS4ERR_RESOURCE, align 4
  %37 = call i64 @htonl(i32 %36)
  store i64 %37, i64* %4, align 8
  br label %92

38:                                               ; preds = %27
  %39 = call i64 @htonl(i32 2)
  %40 = load i64*, i64** %9, align 8
  %41 = getelementptr inbounds i64, i64* %40, i32 1
  store i64* %41, i64** %9, align 8
  store i64 %39, i64* %40, align 8
  %42 = getelementptr inbounds [2 x i64], [2 x i64]* %8, i64 0, i64 0
  %43 = load i64, i64* %42, align 16
  %44 = load i64*, i64** %9, align 8
  %45 = getelementptr inbounds i64, i64* %44, i32 1
  store i64* %45, i64** %9, align 8
  store i64 %43, i64* %44, align 8
  %46 = getelementptr inbounds [2 x i64], [2 x i64]* %8, i64 0, i64 1
  %47 = load i64, i64* %46, align 8
  %48 = load i64*, i64** %9, align 8
  %49 = getelementptr inbounds i64, i64* %48, i32 1
  store i64* %49, i64** %9, align 8
  store i64 %47, i64* %48, align 8
  br label %89

50:                                               ; preds = %3
  %51 = getelementptr inbounds [2 x i64], [2 x i64]* %8, i64 0, i64 0
  %52 = load i64, i64* %51, align 16
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %73

54:                                               ; preds = %50
  %55 = load %struct.xdr_stream*, %struct.xdr_stream** %5, align 8
  %56 = call i64* @xdr_reserve_space(%struct.xdr_stream* %55, i32 12)
  store i64* %56, i64** %9, align 8
  %57 = load i64*, i64** %9, align 8
  %58 = icmp eq i64* %57, null
  %59 = zext i1 %58 to i32
  %60 = call i64 @unlikely(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %54
  %63 = load i32, i32* @NFS4ERR_RESOURCE, align 4
  %64 = call i64 @htonl(i32 %63)
  store i64 %64, i64* %4, align 8
  br label %92

65:                                               ; preds = %54
  %66 = call i64 @htonl(i32 1)
  %67 = load i64*, i64** %9, align 8
  %68 = getelementptr inbounds i64, i64* %67, i32 1
  store i64* %68, i64** %9, align 8
  store i64 %66, i64* %67, align 8
  %69 = getelementptr inbounds [2 x i64], [2 x i64]* %8, i64 0, i64 0
  %70 = load i64, i64* %69, align 16
  %71 = load i64*, i64** %9, align 8
  %72 = getelementptr inbounds i64, i64* %71, i32 1
  store i64* %72, i64** %9, align 8
  store i64 %70, i64* %71, align 8
  br label %88

73:                                               ; preds = %50
  %74 = load %struct.xdr_stream*, %struct.xdr_stream** %5, align 8
  %75 = call i64* @xdr_reserve_space(%struct.xdr_stream* %74, i32 8)
  store i64* %75, i64** %9, align 8
  %76 = load i64*, i64** %9, align 8
  %77 = icmp eq i64* %76, null
  %78 = zext i1 %77 to i32
  %79 = call i64 @unlikely(i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %73
  %82 = load i32, i32* @NFS4ERR_RESOURCE, align 4
  %83 = call i64 @htonl(i32 %82)
  store i64 %83, i64* %4, align 8
  br label %92

84:                                               ; preds = %73
  %85 = call i64 @htonl(i32 0)
  %86 = load i64*, i64** %9, align 8
  %87 = getelementptr inbounds i64, i64* %86, i32 1
  store i64* %87, i64** %9, align 8
  store i64 %85, i64* %86, align 8
  br label %88

88:                                               ; preds = %84, %65
  br label %89

89:                                               ; preds = %88, %38
  %90 = load i64*, i64** %9, align 8
  %91 = load i64**, i64*** %7, align 8
  store i64* %90, i64** %91, align 8
  store i64 0, i64* %4, align 8
  br label %92

92:                                               ; preds = %89, %81, %62, %35
  %93 = load i64, i64* %4, align 8
  ret i64 %93
}

declare dso_local i64 @htonl(i32) #1

declare dso_local i64* @xdr_reserve_space(%struct.xdr_stream*, i32) #1

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
