; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_asn1.c_asn1_oid_decode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_asn1.c_asn1_oid_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asn1_ctx = type { i8*, i32 }

@UINT_MAX = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ASN1_ERR_DEC_BADVALUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.asn1_ctx*, i8*, i64**, i32*)* @asn1_oid_decode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @asn1_oid_decode(%struct.asn1_ctx* %0, i8* %1, i64** %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.asn1_ctx*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64*, align 8
  store %struct.asn1_ctx* %0, %struct.asn1_ctx** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64** %2, i64*** %8, align 8
  store i32* %3, i32** %9, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = load %struct.asn1_ctx*, %struct.asn1_ctx** %6, align 8
  %15 = getelementptr inbounds %struct.asn1_ctx, %struct.asn1_ctx* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  %17 = ptrtoint i8* %13 to i64
  %18 = ptrtoint i8* %16 to i64
  %19 = sub i64 %17, %18
  %20 = add nsw i64 %19, 1
  %21 = trunc i64 %20 to i32
  store i32 %21, i32* %11, align 4
  %22 = load i32, i32* %11, align 4
  %23 = icmp ult i32 %22, 2
  br i1 %23, label %31, label %24

24:                                               ; preds = %4
  %25 = load i32, i32* %11, align 4
  %26 = zext i32 %25 to i64
  %27 = load i32, i32* @UINT_MAX, align 4
  %28 = sext i32 %27 to i64
  %29 = udiv i64 %28, 8
  %30 = icmp ugt i64 %26, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %24, %4
  store i32 0, i32* %5, align 4
  br label %119

32:                                               ; preds = %24
  %33 = load i32, i32* %11, align 4
  %34 = zext i32 %33 to i64
  %35 = mul i64 %34, 8
  %36 = trunc i64 %35 to i32
  %37 = load i32, i32* @GFP_ATOMIC, align 4
  %38 = call i64* @kmalloc(i32 %36, i32 %37)
  %39 = load i64**, i64*** %8, align 8
  store i64* %38, i64** %39, align 8
  %40 = load i64**, i64*** %8, align 8
  %41 = load i64*, i64** %40, align 8
  %42 = icmp eq i64* %41, null
  br i1 %42, label %43, label %44

43:                                               ; preds = %32
  store i32 0, i32* %5, align 4
  br label %119

44:                                               ; preds = %32
  %45 = load i64**, i64*** %8, align 8
  %46 = load i64*, i64** %45, align 8
  store i64* %46, i64** %12, align 8
  %47 = load %struct.asn1_ctx*, %struct.asn1_ctx** %6, align 8
  %48 = call i32 @asn1_subid_decode(%struct.asn1_ctx* %47, i64* %10)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %55, label %50

50:                                               ; preds = %44
  %51 = load i64**, i64*** %8, align 8
  %52 = load i64*, i64** %51, align 8
  %53 = call i32 @kfree(i64* %52)
  %54 = load i64**, i64*** %8, align 8
  store i64* null, i64** %54, align 8
  store i32 0, i32* %5, align 4
  br label %119

55:                                               ; preds = %44
  %56 = load i64, i64* %10, align 8
  %57 = icmp ult i64 %56, 40
  br i1 %57, label %58, label %64

58:                                               ; preds = %55
  %59 = load i64*, i64** %12, align 8
  %60 = getelementptr inbounds i64, i64* %59, i64 0
  store i64 0, i64* %60, align 8
  %61 = load i64, i64* %10, align 8
  %62 = load i64*, i64** %12, align 8
  %63 = getelementptr inbounds i64, i64* %62, i64 1
  store i64 %61, i64* %63, align 8
  br label %82

64:                                               ; preds = %55
  %65 = load i64, i64* %10, align 8
  %66 = icmp ult i64 %65, 80
  br i1 %66, label %67, label %74

67:                                               ; preds = %64
  %68 = load i64*, i64** %12, align 8
  %69 = getelementptr inbounds i64, i64* %68, i64 0
  store i64 1, i64* %69, align 8
  %70 = load i64, i64* %10, align 8
  %71 = sub i64 %70, 40
  %72 = load i64*, i64** %12, align 8
  %73 = getelementptr inbounds i64, i64* %72, i64 1
  store i64 %71, i64* %73, align 8
  br label %81

74:                                               ; preds = %64
  %75 = load i64*, i64** %12, align 8
  %76 = getelementptr inbounds i64, i64* %75, i64 0
  store i64 2, i64* %76, align 8
  %77 = load i64, i64* %10, align 8
  %78 = sub i64 %77, 80
  %79 = load i64*, i64** %12, align 8
  %80 = getelementptr inbounds i64, i64* %79, i64 1
  store i64 %78, i64* %80, align 8
  br label %81

81:                                               ; preds = %74, %67
  br label %82

82:                                               ; preds = %81, %58
  %83 = load i32*, i32** %9, align 8
  store i32 2, i32* %83, align 4
  %84 = load i64*, i64** %12, align 8
  %85 = getelementptr inbounds i64, i64* %84, i64 2
  store i64* %85, i64** %12, align 8
  br label %86

86:                                               ; preds = %117, %82
  %87 = load %struct.asn1_ctx*, %struct.asn1_ctx** %6, align 8
  %88 = getelementptr inbounds %struct.asn1_ctx, %struct.asn1_ctx* %87, i32 0, i32 0
  %89 = load i8*, i8** %88, align 8
  %90 = load i8*, i8** %7, align 8
  %91 = icmp ult i8* %89, %90
  br i1 %91, label %92, label %118

92:                                               ; preds = %86
  %93 = load i32*, i32** %9, align 8
  %94 = load i32, i32* %93, align 4
  %95 = add i32 %94, 1
  store i32 %95, i32* %93, align 4
  %96 = load i32, i32* %11, align 4
  %97 = icmp ugt i32 %95, %96
  br i1 %97, label %98, label %106

98:                                               ; preds = %92
  %99 = load i32, i32* @ASN1_ERR_DEC_BADVALUE, align 4
  %100 = load %struct.asn1_ctx*, %struct.asn1_ctx** %6, align 8
  %101 = getelementptr inbounds %struct.asn1_ctx, %struct.asn1_ctx* %100, i32 0, i32 1
  store i32 %99, i32* %101, align 8
  %102 = load i64**, i64*** %8, align 8
  %103 = load i64*, i64** %102, align 8
  %104 = call i32 @kfree(i64* %103)
  %105 = load i64**, i64*** %8, align 8
  store i64* null, i64** %105, align 8
  store i32 0, i32* %5, align 4
  br label %119

106:                                              ; preds = %92
  %107 = load %struct.asn1_ctx*, %struct.asn1_ctx** %6, align 8
  %108 = load i64*, i64** %12, align 8
  %109 = getelementptr inbounds i64, i64* %108, i32 1
  store i64* %109, i64** %12, align 8
  %110 = call i32 @asn1_subid_decode(%struct.asn1_ctx* %107, i64* %108)
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %117, label %112

112:                                              ; preds = %106
  %113 = load i64**, i64*** %8, align 8
  %114 = load i64*, i64** %113, align 8
  %115 = call i32 @kfree(i64* %114)
  %116 = load i64**, i64*** %8, align 8
  store i64* null, i64** %116, align 8
  store i32 0, i32* %5, align 4
  br label %119

117:                                              ; preds = %106
  br label %86

118:                                              ; preds = %86
  store i32 1, i32* %5, align 4
  br label %119

119:                                              ; preds = %118, %112, %98, %50, %43, %31
  %120 = load i32, i32* %5, align 4
  ret i32 %120
}

declare dso_local i64* @kmalloc(i32, i32) #1

declare dso_local i32 @asn1_subid_decode(%struct.asn1_ctx*, i64*) #1

declare dso_local i32 @kfree(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
