; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_consume.c_dt_print_lquantize_packed.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_consume.c_dt_print_lquantize_packed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EDT_DMISMATCH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"< %d\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%8s :\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%8d :\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c">= %d\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c": %-8s | %lld\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dt_print_lquantize_packed(i32* %0, i32* %1, i8* %2, i64 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca x86_fp80, align 16
  %14 = alloca x86_fp80, align 16
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca [32 x i8], align 16
  %23 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32* %4, i32** %11, align 8
  %24 = load i8*, i8** %9, align 8
  %25 = bitcast i8* %24 to i64*
  store i64* %25, i64** %12, align 8
  store x86_fp80 0xK00000000000000000000, x86_fp80* %13, align 16
  store x86_fp80 0xK00000000000000000000, x86_fp80* %14, align 16
  %26 = load i64, i64* %10, align 8
  %27 = icmp ult i64 %26, 4
  br i1 %27, label %28, label %32

28:                                               ; preds = %5
  %29 = load i32*, i32** %7, align 8
  %30 = load i32, i32* @EDT_DMISMATCH, align 4
  %31 = call i32 @dt_set_errno(i32* %29, i32 %30)
  store i32 %31, i32* %6, align 4
  br label %143

32:                                               ; preds = %5
  %33 = load i64*, i64** %12, align 8
  %34 = getelementptr inbounds i64, i64* %33, i32 1
  store i64* %34, i64** %12, align 8
  %35 = load i64, i64* %33, align 8
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %19, align 4
  %37 = load i64, i64* %10, align 8
  %38 = sub i64 %37, 4
  store i64 %38, i64* %10, align 8
  %39 = load i32, i32* %19, align 4
  %40 = call i32 @DTRACE_LQUANTIZE_BASE(i32 %39)
  store i32 %40, i32* %17, align 4
  %41 = load i32, i32* %19, align 4
  %42 = call i32 @DTRACE_LQUANTIZE_STEP(i32 %41)
  store i32 %42, i32* %20, align 4
  %43 = load i32, i32* %19, align 4
  %44 = call i32 @DTRACE_LQUANTIZE_LEVELS(i32 %43)
  store i32 %44, i32* %21, align 4
  %45 = load i64, i64* %10, align 8
  %46 = load i32, i32* %21, align 4
  %47 = add nsw i32 %46, 2
  %48 = sext i32 %47 to i64
  %49 = mul i64 4, %48
  %50 = icmp ne i64 %45, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %32
  %52 = load i32*, i32** %7, align 8
  %53 = load i32, i32* @EDT_DMISMATCH, align 4
  %54 = call i32 @dt_set_errno(i32* %52, i32 %53)
  store i32 %54, i32* %6, align 4
  br label %143

55:                                               ; preds = %32
  store i32 0, i32* %15, align 4
  %56 = load i32, i32* %21, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %16, align 4
  %58 = load i32, i32* %15, align 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %68

60:                                               ; preds = %55
  %61 = getelementptr inbounds [32 x i8], [32 x i8]* %22, i64 0, i64 0
  %62 = load i32, i32* %17, align 4
  %63 = call i32 @snprintf(i8* %61, i32 32, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %62)
  %64 = load i32*, i32** %7, align 8
  %65 = load i32*, i32** %8, align 8
  %66 = getelementptr inbounds [32 x i8], [32 x i8]* %22, i64 0, i64 0
  %67 = call i32 (i32*, i32*, i8*, ...) @dt_printf(i32* %64, i32* %65, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %66)
  store i32 %67, i32* %18, align 4
  br label %78

68:                                               ; preds = %55
  %69 = load i32*, i32** %7, align 8
  %70 = load i32*, i32** %8, align 8
  %71 = load i32, i32* %17, align 4
  %72 = load i32, i32* %15, align 4
  %73 = sub nsw i32 %72, 1
  %74 = load i32, i32* %20, align 4
  %75 = mul nsw i32 %73, %74
  %76 = add nsw i32 %71, %75
  %77 = call i32 (i32*, i32*, i8*, ...) @dt_printf(i32* %69, i32* %70, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %76)
  store i32 %77, i32* %18, align 4
  br label %78

78:                                               ; preds = %68, %60
  %79 = load i32, i32* %18, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %78
  store i32 -1, i32* %6, align 4
  br label %143

82:                                               ; preds = %78
  %83 = load i32, i32* %15, align 4
  store i32 %83, i32* %23, align 4
  br label %84

84:                                               ; preds = %104, %82
  %85 = load i32, i32* %23, align 4
  %86 = load i32, i32* %16, align 4
  %87 = icmp ule i32 %85, %86
  br i1 %87, label %88, label %107

88:                                               ; preds = %84
  %89 = load i32*, i32** %7, align 8
  %90 = load i64*, i64** %12, align 8
  %91 = load i32, i32* %23, align 4
  %92 = zext i32 %91 to i64
  %93 = getelementptr inbounds i64, i64* %90, i64 %92
  %94 = load i64, i64* %93, align 8
  %95 = call i32 @dt_quantize_total(i32* %89, i64 %94, x86_fp80* %13)
  %96 = load i64*, i64** %12, align 8
  %97 = load i32, i32* %23, align 4
  %98 = zext i32 %97 to i64
  %99 = getelementptr inbounds i64, i64* %96, i64 %98
  %100 = load i64, i64* %99, align 8
  %101 = sitofp i64 %100 to x86_fp80
  %102 = load x86_fp80, x86_fp80* %14, align 16
  %103 = fadd x86_fp80 %102, %101
  store x86_fp80 %103, x86_fp80* %14, align 16
  br label %104

104:                                              ; preds = %88
  %105 = load i32, i32* %23, align 4
  %106 = add i32 %105, 1
  store i32 %106, i32* %23, align 4
  br label %84

107:                                              ; preds = %84
  %108 = load i32, i32* %15, align 4
  store i32 %108, i32* %23, align 4
  br label %109

109:                                              ; preds = %126, %107
  %110 = load i32, i32* %23, align 4
  %111 = load i32, i32* %16, align 4
  %112 = icmp ule i32 %110, %111
  br i1 %112, label %113, label %129

113:                                              ; preds = %109
  %114 = load i32*, i32** %7, align 8
  %115 = load i32*, i32** %8, align 8
  %116 = load i64*, i64** %12, align 8
  %117 = load i32, i32* %23, align 4
  %118 = zext i32 %117 to i64
  %119 = getelementptr inbounds i64, i64* %116, i64 %118
  %120 = load i64, i64* %119, align 8
  %121 = load x86_fp80, x86_fp80* %13, align 16
  %122 = call i64 @dt_print_packed(i32* %114, i32* %115, i64 %120, x86_fp80 %121)
  %123 = icmp slt i64 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %113
  store i32 -1, i32* %6, align 4
  br label %143

125:                                              ; preds = %113
  br label %126

126:                                              ; preds = %125
  %127 = load i32, i32* %23, align 4
  %128 = add i32 %127, 1
  store i32 %128, i32* %23, align 4
  br label %109

129:                                              ; preds = %109
  %130 = getelementptr inbounds [32 x i8], [32 x i8]* %22, i64 0, i64 0
  %131 = load i32, i32* %17, align 4
  %132 = load i32, i32* %21, align 4
  %133 = load i32, i32* %20, align 4
  %134 = mul nsw i32 %132, %133
  %135 = add nsw i32 %131, %134
  %136 = call i32 @snprintf(i8* %130, i32 32, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 %135)
  %137 = load i32*, i32** %7, align 8
  %138 = load i32*, i32** %8, align 8
  %139 = getelementptr inbounds [32 x i8], [32 x i8]* %22, i64 0, i64 0
  %140 = load x86_fp80, x86_fp80* %14, align 16
  %141 = fptosi x86_fp80 %140 to i64
  %142 = call i32 (i32*, i32*, i8*, ...) @dt_printf(i32* %137, i32* %138, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i8* %139, i64 %141)
  store i32 %142, i32* %6, align 4
  br label %143

143:                                              ; preds = %129, %124, %81, %51, %28
  %144 = load i32, i32* %6, align 4
  ret i32 %144
}

declare dso_local i32 @dt_set_errno(i32*, i32) #1

declare dso_local i32 @DTRACE_LQUANTIZE_BASE(i32) #1

declare dso_local i32 @DTRACE_LQUANTIZE_STEP(i32) #1

declare dso_local i32 @DTRACE_LQUANTIZE_LEVELS(i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @dt_printf(i32*, i32*, i8*, ...) #1

declare dso_local i32 @dt_quantize_total(i32*, i64, x86_fp80*) #1

declare dso_local i64 @dt_print_packed(i32*, i32*, i64, x86_fp80) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
