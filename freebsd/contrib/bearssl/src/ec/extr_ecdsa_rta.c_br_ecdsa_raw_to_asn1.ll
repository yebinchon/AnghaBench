; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/src/ec/extr_ecdsa_rta.c_br_ecdsa_raw_to_asn1.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/src/ec/extr_ecdsa_rta.c_br_ecdsa_raw_to_asn1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @br_ecdsa_raw_to_asn1(i8* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca [257 x i8], align 16
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  %13 = load i8*, i8** %4, align 8
  store i8* %13, i8** %6, align 8
  %14 = load i64, i64* %5, align 8
  %15 = and i64 %14, 1
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store i64 0, i64* %3, align 8
  br label %134

18:                                               ; preds = %2
  %19 = load i64, i64* %5, align 8
  %20 = lshr i64 %19, 1
  store i64 %20, i64* %7, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = load i64, i64* %7, align 8
  %23 = call i64 @asn1_int_length(i8* %21, i64 %22)
  store i64 %23, i64* %8, align 8
  %24 = load i8*, i8** %6, align 8
  %25 = load i64, i64* %7, align 8
  %26 = getelementptr inbounds i8, i8* %24, i64 %25
  %27 = load i64, i64* %7, align 8
  %28 = call i64 @asn1_int_length(i8* %26, i64 %27)
  store i64 %28, i64* %9, align 8
  %29 = load i64, i64* %8, align 8
  %30 = icmp ugt i64 %29, 125
  br i1 %30, label %34, label %31

31:                                               ; preds = %18
  %32 = load i64, i64* %9, align 8
  %33 = icmp ugt i64 %32, 125
  br i1 %33, label %34, label %35

34:                                               ; preds = %31, %18
  store i64 0, i64* %3, align 8
  br label %134

35:                                               ; preds = %31
  %36 = getelementptr inbounds [257 x i8], [257 x i8]* %12, i64 0, i64 0
  store i8 48, i8* %36, align 16
  %37 = load i64, i64* %8, align 8
  %38 = load i64, i64* %9, align 8
  %39 = add i64 %37, %38
  %40 = add i64 %39, 4
  store i64 %40, i64* %10, align 8
  %41 = load i64, i64* %10, align 8
  %42 = icmp uge i64 %41, 128
  br i1 %42, label %43, label %48

43:                                               ; preds = %35
  %44 = getelementptr inbounds [257 x i8], [257 x i8]* %12, i64 0, i64 1
  store i8 -127, i8* %44, align 1
  %45 = load i64, i64* %10, align 8
  %46 = trunc i64 %45 to i8
  %47 = getelementptr inbounds [257 x i8], [257 x i8]* %12, i64 0, i64 2
  store i8 %46, i8* %47, align 2
  store i64 3, i64* %11, align 8
  br label %52

48:                                               ; preds = %35
  %49 = load i64, i64* %10, align 8
  %50 = trunc i64 %49 to i8
  %51 = getelementptr inbounds [257 x i8], [257 x i8]* %12, i64 0, i64 1
  store i8 %50, i8* %51, align 1
  store i64 2, i64* %11, align 8
  br label %52

52:                                               ; preds = %48, %43
  %53 = load i64, i64* %11, align 8
  %54 = add i64 %53, 1
  store i64 %54, i64* %11, align 8
  %55 = getelementptr inbounds [257 x i8], [257 x i8]* %12, i64 0, i64 %53
  store i8 2, i8* %55, align 1
  %56 = load i64, i64* %8, align 8
  %57 = trunc i64 %56 to i8
  %58 = load i64, i64* %11, align 8
  %59 = add i64 %58, 1
  store i64 %59, i64* %11, align 8
  %60 = getelementptr inbounds [257 x i8], [257 x i8]* %12, i64 0, i64 %58
  store i8 %57, i8* %60, align 1
  %61 = load i64, i64* %8, align 8
  %62 = load i64, i64* %7, align 8
  %63 = icmp ugt i64 %61, %62
  br i1 %63, label %64, label %74

64:                                               ; preds = %52
  %65 = load i64, i64* %11, align 8
  %66 = getelementptr inbounds [257 x i8], [257 x i8]* %12, i64 0, i64 %65
  store i8 0, i8* %66, align 1
  %67 = getelementptr inbounds [257 x i8], [257 x i8]* %12, i64 0, i64 0
  %68 = load i64, i64* %11, align 8
  %69 = getelementptr inbounds i8, i8* %67, i64 %68
  %70 = getelementptr inbounds i8, i8* %69, i64 1
  %71 = load i8*, i8** %6, align 8
  %72 = load i64, i64* %7, align 8
  %73 = call i32 @memcpy(i8* %70, i8* %71, i64 %72)
  br label %86

74:                                               ; preds = %52
  %75 = getelementptr inbounds [257 x i8], [257 x i8]* %12, i64 0, i64 0
  %76 = load i64, i64* %11, align 8
  %77 = getelementptr inbounds i8, i8* %75, i64 %76
  %78 = load i8*, i8** %6, align 8
  %79 = load i64, i64* %7, align 8
  %80 = getelementptr inbounds i8, i8* %78, i64 %79
  %81 = load i64, i64* %8, align 8
  %82 = sub i64 0, %81
  %83 = getelementptr inbounds i8, i8* %80, i64 %82
  %84 = load i64, i64* %8, align 8
  %85 = call i32 @memcpy(i8* %77, i8* %83, i64 %84)
  br label %86

86:                                               ; preds = %74, %64
  %87 = load i64, i64* %8, align 8
  %88 = load i64, i64* %11, align 8
  %89 = add i64 %88, %87
  store i64 %89, i64* %11, align 8
  %90 = load i64, i64* %11, align 8
  %91 = add i64 %90, 1
  store i64 %91, i64* %11, align 8
  %92 = getelementptr inbounds [257 x i8], [257 x i8]* %12, i64 0, i64 %90
  store i8 2, i8* %92, align 1
  %93 = load i64, i64* %9, align 8
  %94 = trunc i64 %93 to i8
  %95 = load i64, i64* %11, align 8
  %96 = add i64 %95, 1
  store i64 %96, i64* %11, align 8
  %97 = getelementptr inbounds [257 x i8], [257 x i8]* %12, i64 0, i64 %95
  store i8 %94, i8* %97, align 1
  %98 = load i64, i64* %9, align 8
  %99 = load i64, i64* %7, align 8
  %100 = icmp ugt i64 %98, %99
  br i1 %100, label %101, label %113

101:                                              ; preds = %86
  %102 = load i64, i64* %11, align 8
  %103 = getelementptr inbounds [257 x i8], [257 x i8]* %12, i64 0, i64 %102
  store i8 0, i8* %103, align 1
  %104 = getelementptr inbounds [257 x i8], [257 x i8]* %12, i64 0, i64 0
  %105 = load i64, i64* %11, align 8
  %106 = getelementptr inbounds i8, i8* %104, i64 %105
  %107 = getelementptr inbounds i8, i8* %106, i64 1
  %108 = load i8*, i8** %6, align 8
  %109 = load i64, i64* %7, align 8
  %110 = getelementptr inbounds i8, i8* %108, i64 %109
  %111 = load i64, i64* %7, align 8
  %112 = call i32 @memcpy(i8* %107, i8* %110, i64 %111)
  br label %125

113:                                              ; preds = %86
  %114 = getelementptr inbounds [257 x i8], [257 x i8]* %12, i64 0, i64 0
  %115 = load i64, i64* %11, align 8
  %116 = getelementptr inbounds i8, i8* %114, i64 %115
  %117 = load i8*, i8** %6, align 8
  %118 = load i64, i64* %5, align 8
  %119 = getelementptr inbounds i8, i8* %117, i64 %118
  %120 = load i64, i64* %9, align 8
  %121 = sub i64 0, %120
  %122 = getelementptr inbounds i8, i8* %119, i64 %121
  %123 = load i64, i64* %9, align 8
  %124 = call i32 @memcpy(i8* %116, i8* %122, i64 %123)
  br label %125

125:                                              ; preds = %113, %101
  %126 = load i64, i64* %9, align 8
  %127 = load i64, i64* %11, align 8
  %128 = add i64 %127, %126
  store i64 %128, i64* %11, align 8
  %129 = load i8*, i8** %4, align 8
  %130 = getelementptr inbounds [257 x i8], [257 x i8]* %12, i64 0, i64 0
  %131 = load i64, i64* %11, align 8
  %132 = call i32 @memcpy(i8* %129, i8* %130, i64 %131)
  %133 = load i64, i64* %11, align 8
  store i64 %133, i64* %3, align 8
  br label %134

134:                                              ; preds = %125, %34, %17
  %135 = load i64, i64* %3, align 8
  ret i64 %135
}

declare dso_local i64 @asn1_int_length(i8*, i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
