; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_print.c_dt_print_float.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_print.c_dt_print_float.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32*, i32* }
%struct.TYPE_6__ = type { i64, i32 }

@NBBY = common dso_local global i32 0, align 4
@CTF_FP_SINGLE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [6 x i8] c"%+.7e\00", align 1
@CTF_FP_DOUBLE = common dso_local global i64 0, align 8
@CTF_FP_LDOUBLE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"%+.16LE\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"<unknown encoding>\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, %struct.TYPE_5__*)* @dt_print_float to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dt_print_float(i32 %0, i32 %1, %struct.TYPE_5__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_6__, align 8
  %10 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store %struct.TYPE_5__* %2, %struct.TYPE_5__** %6, align 8
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 2
  %13 = load i32*, i32** %12, align 8
  store i32* %13, i32** %7, align 8
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  store i32* %16, i32** %8, align 8
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @NBBY, align 4
  %22 = sdiv i32 %20, %21
  %23 = sext i32 %22 to i64
  %24 = add nsw i64 %19, %23
  store i64 %24, i64* %10, align 8
  %25 = load i32*, i32** %8, align 8
  %26 = load i32, i32* %4, align 4
  %27 = call i64 @ctf_type_encoding(i32* %25, i32 %26, %struct.TYPE_6__* %9)
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %93

29:                                               ; preds = %3
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @CTF_FP_SINGLE, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %49

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = sext i32 %36 to i64
  %38 = load i32, i32* @NBBY, align 4
  %39 = sext i32 %38 to i64
  %40 = mul i64 4, %39
  %41 = icmp eq i64 %37, %40
  br i1 %41, label %42, label %49

42:                                               ; preds = %34
  %43 = load i32*, i32** %7, align 8
  %44 = load i64, i64* %10, align 8
  %45 = inttoptr i64 %44 to float*
  %46 = load float, float* %45, align 4
  %47 = fpext float %46 to double
  %48 = call i32 (i32*, i8*, ...) @fprintf(i32* %43, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), double %47)
  br label %92

49:                                               ; preds = %34, %29
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @CTF_FP_DOUBLE, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %68

54:                                               ; preds = %49
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = sext i32 %56 to i64
  %58 = load i32, i32* @NBBY, align 4
  %59 = sext i32 %58 to i64
  %60 = mul i64 8, %59
  %61 = icmp eq i64 %57, %60
  br i1 %61, label %62, label %68

62:                                               ; preds = %54
  %63 = load i32*, i32** %7, align 8
  %64 = load i64, i64* %10, align 8
  %65 = inttoptr i64 %64 to double*
  %66 = load double, double* %65, align 8
  %67 = call i32 (i32*, i8*, ...) @fprintf(i32* %63, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), double %66)
  br label %91

68:                                               ; preds = %54, %49
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @CTF_FP_LDOUBLE, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %87

73:                                               ; preds = %68
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = sext i32 %75 to i64
  %77 = load i32, i32* @NBBY, align 4
  %78 = sext i32 %77 to i64
  %79 = mul i64 16, %78
  %80 = icmp eq i64 %76, %79
  br i1 %80, label %81, label %87

81:                                               ; preds = %73
  %82 = load i32*, i32** %7, align 8
  %83 = load i64, i64* %10, align 8
  %84 = inttoptr i64 %83 to x86_fp80*
  %85 = load x86_fp80, x86_fp80* %84, align 16
  %86 = call i32 (i32*, i8*, ...) @fprintf(i32* %82, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), x86_fp80 %85)
  br label %90

87:                                               ; preds = %73, %68
  %88 = load i32*, i32** %7, align 8
  %89 = call i32 (i32*, i8*, ...) @fprintf(i32* %88, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  br label %90

90:                                               ; preds = %87, %81
  br label %91

91:                                               ; preds = %90, %62
  br label %92

92:                                               ; preds = %91, %42
  br label %93

93:                                               ; preds = %92, %3
  ret void
}

declare dso_local i64 @ctf_type_encoding(i32*, i32, %struct.TYPE_6__*) #1

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
