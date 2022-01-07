; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_consume.c_dt_print_quantize.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_consume.c_dt_print_quantize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DTRACE_QUANTIZE_NBUCKETS = common dso_local global i32 0, align 4
@EDT_DMISMATCH = common dso_local global i32 0, align 4
@DTRACE_QUANTIZE_ZEROBUCKET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"%16lld \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dt_print_quantize(i32* %0, i32* %1, i8* %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca x86_fp80, align 16
  %17 = alloca i8, align 1
  %18 = alloca i8, align 1
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %19 = load i8*, i8** %9, align 8
  %20 = bitcast i8* %19 to i64*
  store i64* %20, i64** %12, align 8
  store i32 0, i32* %14, align 4
  %21 = load i32, i32* @DTRACE_QUANTIZE_NBUCKETS, align 4
  %22 = sub nsw i32 %21, 1
  store i32 %22, i32* %15, align 4
  store x86_fp80 0xK00000000000000000000, x86_fp80* %16, align 16
  store i8 0, i8* %17, align 1
  store i8 0, i8* %18, align 1
  %23 = load i64, i64* %10, align 8
  %24 = load i32, i32* @DTRACE_QUANTIZE_NBUCKETS, align 4
  %25 = sext i32 %24 to i64
  %26 = mul i64 %25, 4
  %27 = icmp ne i64 %23, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %5
  %29 = load i32*, i32** %7, align 8
  %30 = load i32, i32* @EDT_DMISMATCH, align 4
  %31 = call i32 @dt_set_errno(i32* %29, i32 %30)
  store i32 %31, i32* %6, align 4
  br label %170

32:                                               ; preds = %5
  br label %33

33:                                               ; preds = %47, %32
  %34 = load i32, i32* %14, align 4
  %35 = load i32, i32* @DTRACE_QUANTIZE_NBUCKETS, align 4
  %36 = sub nsw i32 %35, 1
  %37 = icmp slt i32 %34, %36
  br i1 %37, label %38, label %45

38:                                               ; preds = %33
  %39 = load i64*, i64** %12, align 8
  %40 = load i32, i32* %14, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i64, i64* %39, i64 %41
  %43 = load i64, i64* %42, align 8
  %44 = icmp eq i64 %43, 0
  br label %45

45:                                               ; preds = %38, %33
  %46 = phi i1 [ false, %33 ], [ %44, %38 ]
  br i1 %46, label %47, label %50

47:                                               ; preds = %45
  %48 = load i32, i32* %14, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %14, align 4
  br label %33

50:                                               ; preds = %45
  %51 = load i32, i32* %14, align 4
  %52 = load i32, i32* @DTRACE_QUANTIZE_NBUCKETS, align 4
  %53 = sub nsw i32 %52, 1
  %54 = icmp eq i32 %51, %53
  br i1 %54, label %55, label %60

55:                                               ; preds = %50
  %56 = load i32, i32* @DTRACE_QUANTIZE_ZEROBUCKET, align 4
  %57 = sub nsw i32 %56, 1
  store i32 %57, i32* %14, align 4
  %58 = load i32, i32* @DTRACE_QUANTIZE_ZEROBUCKET, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %15, align 4
  br label %91

60:                                               ; preds = %50
  %61 = load i32, i32* %14, align 4
  %62 = icmp sgt i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %60
  %64 = load i32, i32* %14, align 4
  %65 = add nsw i32 %64, -1
  store i32 %65, i32* %14, align 4
  br label %66

66:                                               ; preds = %63, %60
  br label %67

67:                                               ; preds = %79, %66
  %68 = load i32, i32* %15, align 4
  %69 = icmp sgt i32 %68, 0
  br i1 %69, label %70, label %77

70:                                               ; preds = %67
  %71 = load i64*, i64** %12, align 8
  %72 = load i32, i32* %15, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i64, i64* %71, i64 %73
  %75 = load i64, i64* %74, align 8
  %76 = icmp eq i64 %75, 0
  br label %77

77:                                               ; preds = %70, %67
  %78 = phi i1 [ false, %67 ], [ %76, %70 ]
  br i1 %78, label %79, label %82

79:                                               ; preds = %77
  %80 = load i32, i32* %15, align 4
  %81 = add nsw i32 %80, -1
  store i32 %81, i32* %15, align 4
  br label %67

82:                                               ; preds = %77
  %83 = load i32, i32* %15, align 4
  %84 = load i32, i32* @DTRACE_QUANTIZE_NBUCKETS, align 4
  %85 = sub nsw i32 %84, 1
  %86 = icmp slt i32 %83, %85
  br i1 %86, label %87, label %90

87:                                               ; preds = %82
  %88 = load i32, i32* %15, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %15, align 4
  br label %90

90:                                               ; preds = %87, %82
  br label %91

91:                                               ; preds = %90, %55
  %92 = load i32, i32* %14, align 4
  store i32 %92, i32* %13, align 4
  br label %93

93:                                               ; preds = %127, %91
  %94 = load i32, i32* %13, align 4
  %95 = load i32, i32* %15, align 4
  %96 = icmp sle i32 %94, %95
  br i1 %96, label %97, label %130

97:                                               ; preds = %93
  %98 = load i64*, i64** %12, align 8
  %99 = load i32, i32* %13, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i64, i64* %98, i64 %100
  %102 = load i64, i64* %101, align 8
  %103 = icmp sgt i64 %102, 0
  %104 = zext i1 %103 to i32
  %105 = load i8, i8* %17, align 1
  %106 = sext i8 %105 to i32
  %107 = or i32 %106, %104
  %108 = trunc i32 %107 to i8
  store i8 %108, i8* %17, align 1
  %109 = load i64*, i64** %12, align 8
  %110 = load i32, i32* %13, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i64, i64* %109, i64 %111
  %113 = load i64, i64* %112, align 8
  %114 = icmp slt i64 %113, 0
  %115 = zext i1 %114 to i32
  %116 = load i8, i8* %18, align 1
  %117 = sext i8 %116 to i32
  %118 = or i32 %117, %115
  %119 = trunc i32 %118 to i8
  store i8 %119, i8* %18, align 1
  %120 = load i32*, i32** %7, align 8
  %121 = load i64*, i64** %12, align 8
  %122 = load i32, i32* %13, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i64, i64* %121, i64 %123
  %125 = load i64, i64* %124, align 8
  %126 = call i32 @dt_quantize_total(i32* %120, i64 %125, x86_fp80* %16)
  br label %127

127:                                              ; preds = %97
  %128 = load i32, i32* %13, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %13, align 4
  br label %93

130:                                              ; preds = %93
  %131 = load i32*, i32** %7, align 8
  %132 = load i32*, i32** %8, align 8
  %133 = call i64 @dt_print_quanthdr(i32* %131, i32* %132, i32 0)
  %134 = icmp slt i64 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %130
  store i32 -1, i32* %6, align 4
  br label %170

136:                                              ; preds = %130
  %137 = load i32, i32* %14, align 4
  store i32 %137, i32* %13, align 4
  br label %138

138:                                              ; preds = %166, %136
  %139 = load i32, i32* %13, align 4
  %140 = load i32, i32* %15, align 4
  %141 = icmp sle i32 %139, %140
  br i1 %141, label %142, label %169

142:                                              ; preds = %138
  %143 = load i32*, i32** %7, align 8
  %144 = load i32*, i32** %8, align 8
  %145 = load i32, i32* %13, align 4
  %146 = call i64 @DTRACE_QUANTIZE_BUCKETVAL(i32 %145)
  %147 = call i64 @dt_printf(i32* %143, i32* %144, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i64 %146)
  %148 = icmp slt i64 %147, 0
  br i1 %148, label %149, label %150

149:                                              ; preds = %142
  store i32 -1, i32* %6, align 4
  br label %170

150:                                              ; preds = %142
  %151 = load i32*, i32** %7, align 8
  %152 = load i32*, i32** %8, align 8
  %153 = load i64*, i64** %12, align 8
  %154 = load i32, i32* %13, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i64, i64* %153, i64 %155
  %157 = load i64, i64* %156, align 8
  %158 = load i32, i32* %11, align 4
  %159 = load x86_fp80, x86_fp80* %16, align 16
  %160 = load i8, i8* %17, align 1
  %161 = load i8, i8* %18, align 1
  %162 = call i64 @dt_print_quantline(i32* %151, i32* %152, i64 %157, i32 %158, x86_fp80 %159, i8 signext %160, i8 signext %161)
  %163 = icmp slt i64 %162, 0
  br i1 %163, label %164, label %165

164:                                              ; preds = %150
  store i32 -1, i32* %6, align 4
  br label %170

165:                                              ; preds = %150
  br label %166

166:                                              ; preds = %165
  %167 = load i32, i32* %13, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %13, align 4
  br label %138

169:                                              ; preds = %138
  store i32 0, i32* %6, align 4
  br label %170

170:                                              ; preds = %169, %164, %149, %135, %28
  %171 = load i32, i32* %6, align 4
  ret i32 %171
}

declare dso_local i32 @dt_set_errno(i32*, i32) #1

declare dso_local i32 @dt_quantize_total(i32*, i64, x86_fp80*) #1

declare dso_local i64 @dt_print_quanthdr(i32*, i32*, i32) #1

declare dso_local i64 @dt_printf(i32*, i32*, i8*, i64) #1

declare dso_local i64 @DTRACE_QUANTIZE_BUCKETVAL(i32) #1

declare dso_local i64 @dt_print_quantline(i32*, i32*, i64, i32, x86_fp80, i8 signext, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
