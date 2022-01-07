; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_consume.c_dt_print_quantize_packed.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_consume.c_dt_print_quantize_packed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@DTRACE_QUANTIZE_NBUCKETS = common dso_local global i32 0, align 4
@EDT_DMISMATCH = common dso_local global i32 0, align 4
@DTRACE_QUANTIZE_ZEROBUCKET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c" %*lld :\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c": %*lld | %lld\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dt_print_quantize_packed(i32* %0, i32* %1, i8* %2, i64 %3, %struct.TYPE_3__* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_3__*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca x86_fp80, align 16
  %14 = alloca x86_fp80, align 16
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store %struct.TYPE_3__* %4, %struct.TYPE_3__** %11, align 8
  %20 = load i8*, i8** %9, align 8
  %21 = bitcast i8* %20 to i64*
  store i64* %21, i64** %12, align 8
  store x86_fp80 0xK00000000000000000000, x86_fp80* %13, align 16
  store x86_fp80 0xK00000000000000000000, x86_fp80* %14, align 16
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %15, align 4
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %16, align 4
  %28 = load i64, i64* %10, align 8
  %29 = load i32, i32* @DTRACE_QUANTIZE_NBUCKETS, align 4
  %30 = sext i32 %29 to i64
  %31 = mul i64 %30, 4
  %32 = icmp ne i64 %28, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %5
  %34 = load i32*, i32** %7, align 8
  %35 = load i32, i32* @EDT_DMISMATCH, align 4
  %36 = call i32 @dt_set_errno(i32* %34, i32 %35)
  store i32 %36, i32* %6, align 4
  br label %128

37:                                               ; preds = %5
  %38 = load i32, i32* %15, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %37
  %41 = load i32, i32* %15, align 4
  %42 = load i32, i32* @DTRACE_QUANTIZE_ZEROBUCKET, align 4
  %43 = icmp ne i32 %41, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %40
  %45 = load i32, i32* %15, align 4
  %46 = add nsw i32 %45, -1
  store i32 %46, i32* %15, align 4
  br label %47

47:                                               ; preds = %44, %40, %37
  %48 = load i32, i32* %16, align 4
  %49 = load i32, i32* @DTRACE_QUANTIZE_NBUCKETS, align 4
  %50 = sub nsw i32 %49, 1
  %51 = icmp slt i32 %48, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %47
  %53 = load i32, i32* %16, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %16, align 4
  br label %55

55:                                               ; preds = %52, %47
  %56 = load i32, i32* %15, align 4
  %57 = call i64 @DTRACE_QUANTIZE_BUCKETVAL(i32 %56)
  store i64 %57, i64* %18, align 8
  %58 = load i32, i32* %16, align 4
  %59 = call i64 @DTRACE_QUANTIZE_BUCKETVAL(i32 %58)
  store i64 %59, i64* %19, align 8
  %60 = load i32*, i32** %7, align 8
  %61 = load i32*, i32** %8, align 8
  %62 = load i64, i64* %18, align 8
  %63 = call i32 @dt_ndigits(i64 %62)
  %64 = load i64, i64* %18, align 8
  %65 = call i64 (i32*, i32*, i8*, i32, i64, ...) @dt_printf(i32* %60, i32* %61, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %63, i64 %64)
  %66 = icmp slt i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %55
  store i32 -1, i32* %6, align 4
  br label %128

68:                                               ; preds = %55
  %69 = load i32, i32* %15, align 4
  store i32 %69, i32* %17, align 4
  br label %70

70:                                               ; preds = %90, %68
  %71 = load i32, i32* %17, align 4
  %72 = load i32, i32* %16, align 4
  %73 = icmp sle i32 %71, %72
  br i1 %73, label %74, label %93

74:                                               ; preds = %70
  %75 = load i32*, i32** %7, align 8
  %76 = load i64*, i64** %12, align 8
  %77 = load i32, i32* %17, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i64, i64* %76, i64 %78
  %80 = load i64, i64* %79, align 8
  %81 = call i32 @dt_quantize_total(i32* %75, i64 %80, x86_fp80* %13)
  %82 = load i64*, i64** %12, align 8
  %83 = load i32, i32* %17, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i64, i64* %82, i64 %84
  %86 = load i64, i64* %85, align 8
  %87 = sitofp i64 %86 to x86_fp80
  %88 = load x86_fp80, x86_fp80* %14, align 16
  %89 = fadd x86_fp80 %88, %87
  store x86_fp80 %89, x86_fp80* %14, align 16
  br label %90

90:                                               ; preds = %74
  %91 = load i32, i32* %17, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %17, align 4
  br label %70

93:                                               ; preds = %70
  %94 = load i32, i32* %15, align 4
  store i32 %94, i32* %17, align 4
  br label %95

95:                                               ; preds = %112, %93
  %96 = load i32, i32* %17, align 4
  %97 = load i32, i32* %16, align 4
  %98 = icmp sle i32 %96, %97
  br i1 %98, label %99, label %115

99:                                               ; preds = %95
  %100 = load i32*, i32** %7, align 8
  %101 = load i32*, i32** %8, align 8
  %102 = load i64*, i64** %12, align 8
  %103 = load i32, i32* %17, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i64, i64* %102, i64 %104
  %106 = load i64, i64* %105, align 8
  %107 = load x86_fp80, x86_fp80* %13, align 16
  %108 = call i64 @dt_print_packed(i32* %100, i32* %101, i64 %106, x86_fp80 %107)
  %109 = icmp slt i64 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %99
  store i32 -1, i32* %6, align 4
  br label %128

111:                                              ; preds = %99
  br label %112

112:                                              ; preds = %111
  %113 = load i32, i32* %17, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %17, align 4
  br label %95

115:                                              ; preds = %95
  %116 = load i32*, i32** %7, align 8
  %117 = load i32*, i32** %8, align 8
  %118 = load i64, i64* %19, align 8
  %119 = call i32 @dt_ndigits(i64 %118)
  %120 = sub nsw i32 0, %119
  %121 = load i64, i64* %19, align 8
  %122 = load x86_fp80, x86_fp80* %14, align 16
  %123 = fptosi x86_fp80 %122 to i64
  %124 = call i64 (i32*, i32*, i8*, i32, i64, ...) @dt_printf(i32* %116, i32* %117, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %120, i64 %121, i64 %123)
  %125 = icmp slt i64 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %115
  store i32 -1, i32* %6, align 4
  br label %128

127:                                              ; preds = %115
  store i32 0, i32* %6, align 4
  br label %128

128:                                              ; preds = %127, %126, %110, %67, %33
  %129 = load i32, i32* %6, align 4
  ret i32 %129
}

declare dso_local i32 @dt_set_errno(i32*, i32) #1

declare dso_local i64 @DTRACE_QUANTIZE_BUCKETVAL(i32) #1

declare dso_local i64 @dt_printf(i32*, i32*, i8*, i32, i64, ...) #1

declare dso_local i32 @dt_ndigits(i64) #1

declare dso_local i32 @dt_quantize_total(i32*, i64, x86_fp80*) #1

declare dso_local i64 @dt_print_packed(i32*, i32*, i64, x86_fp80) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
