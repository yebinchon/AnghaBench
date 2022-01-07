; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_consume.c_dt_print_quanthdr_packed.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_consume.c_dt_print_quanthdr_packed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@DTRACEAGG_QUANTIZE = common dso_local global i64 0, align 8
@DTRACEAGG_LQUANTIZE = common dso_local global i64 0, align 8
@DTRACE_QUANTIZE_ZEROBUCKET = common dso_local global i32 0, align 4
@DTRACE_QUANTIZE_NBUCKETS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"\0A%*s %*s .\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"key\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"min\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c". %*s | count\0A\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"max\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32, %struct.TYPE_3__*, i64)* @dt_print_quanthdr_packed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dt_print_quanthdr_packed(i32* %0, i32* %1, i32 %2, %struct.TYPE_3__* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_3__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.TYPE_3__* %3, %struct.TYPE_3__** %10, align 8
  store i64 %4, i64* %11, align 8
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %12, align 4
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %13, align 4
  %23 = load i64, i64* %11, align 8
  %24 = load i64, i64* @DTRACEAGG_QUANTIZE, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %30, label %26

26:                                               ; preds = %5
  %27 = load i64, i64* %11, align 8
  %28 = load i64, i64* @DTRACEAGG_LQUANTIZE, align 8
  %29 = icmp eq i64 %27, %28
  br label %30

30:                                               ; preds = %26, %5
  %31 = phi i1 [ true, %5 ], [ %29, %26 ]
  %32 = zext i1 %31 to i32
  %33 = call i32 @assert(i32 %32)
  %34 = load i64, i64* %11, align 8
  %35 = load i64, i64* @DTRACEAGG_QUANTIZE, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %62

37:                                               ; preds = %30
  %38 = load i32, i32* %12, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %37
  %41 = load i32, i32* %12, align 4
  %42 = load i32, i32* @DTRACE_QUANTIZE_ZEROBUCKET, align 4
  %43 = icmp ne i32 %41, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %40
  %45 = load i32, i32* %12, align 4
  %46 = add nsw i32 %45, -1
  store i32 %46, i32* %12, align 4
  br label %47

47:                                               ; preds = %44, %40, %37
  %48 = load i32, i32* %13, align 4
  %49 = load i32, i32* @DTRACE_QUANTIZE_NBUCKETS, align 4
  %50 = sub nsw i32 %49, 1
  %51 = icmp slt i32 %48, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %47
  %53 = load i32, i32* %13, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %13, align 4
  br label %55

55:                                               ; preds = %52, %47
  %56 = load i32, i32* %12, align 4
  %57 = call i32 @DTRACE_QUANTIZE_BUCKETVAL(i32 %56)
  %58 = call i32 @dt_ndigits(i32 %57)
  store i32 %58, i32* %14, align 4
  %59 = load i32, i32* %13, align 4
  %60 = call i32 @DTRACE_QUANTIZE_BUCKETVAL(i32 %59)
  %61 = call i32 @dt_ndigits(i32 %60)
  store i32 %61, i32* %15, align 4
  br label %67

62:                                               ; preds = %30
  store i32 8, i32* %15, align 4
  %63 = load i32, i32* %15, align 4
  %64 = sub nsw i32 %63, 1
  store i32 %64, i32* %14, align 4
  %65 = load i32, i32* %13, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %13, align 4
  br label %67

67:                                               ; preds = %62, %55
  %68 = load i32*, i32** %7, align 8
  %69 = load i32*, i32** %8, align 8
  %70 = load i32, i32* %9, align 4
  %71 = load i32, i32* %9, align 4
  %72 = icmp sgt i32 %71, 0
  %73 = zext i1 %72 to i64
  %74 = select i1 %72, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %75 = load i32, i32* %14, align 4
  %76 = call i32 (i32*, i32*, i8*, ...) @dt_printf(i32* %68, i32* %69, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %70, i8* %74, i32 %75, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %67
  store i32 -1, i32* %6, align 4
  br label %101

79:                                               ; preds = %67
  %80 = load i32, i32* %12, align 4
  store i32 %80, i32* %16, align 4
  br label %81

81:                                               ; preds = %92, %79
  %82 = load i32, i32* %16, align 4
  %83 = load i32, i32* %13, align 4
  %84 = icmp sle i32 %82, %83
  br i1 %84, label %85, label %95

85:                                               ; preds = %81
  %86 = load i32*, i32** %7, align 8
  %87 = load i32*, i32** %8, align 8
  %88 = call i32 (i32*, i32*, i8*, ...) @dt_printf(i32* %86, i32* %87, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %85
  store i32 -1, i32* %6, align 4
  br label %101

91:                                               ; preds = %85
  br label %92

92:                                               ; preds = %91
  %93 = load i32, i32* %16, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %16, align 4
  br label %81

95:                                               ; preds = %81
  %96 = load i32*, i32** %7, align 8
  %97 = load i32*, i32** %8, align 8
  %98 = load i32, i32* %15, align 4
  %99 = sub nsw i32 0, %98
  %100 = call i32 (i32*, i32*, i8*, ...) @dt_printf(i32* %96, i32* %97, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i32 %99, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  store i32 %100, i32* %6, align 4
  br label %101

101:                                              ; preds = %95, %90, %78
  %102 = load i32, i32* %6, align 4
  ret i32 %102
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @dt_ndigits(i32) #1

declare dso_local i32 @DTRACE_QUANTIZE_BUCKETVAL(i32) #1

declare dso_local i32 @dt_printf(i32*, i32*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
