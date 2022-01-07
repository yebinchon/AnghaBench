; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcclibs/libdecnumber/extr_decContext.c_decContextStatusToString.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcclibs/libdecnumber/extr_decContext.c_decContextStatusToString.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }

@DEC_Conversion_syntax = common dso_local global i64 0, align 8
@DEC_Condition_CS = common dso_local global i8* null, align 8
@DEC_Division_by_zero = common dso_local global i64 0, align 8
@DEC_Condition_DZ = common dso_local global i8* null, align 8
@DEC_Division_impossible = common dso_local global i64 0, align 8
@DEC_Condition_DI = common dso_local global i8* null, align 8
@DEC_Division_undefined = common dso_local global i64 0, align 8
@DEC_Condition_DU = common dso_local global i8* null, align 8
@DEC_Inexact = common dso_local global i64 0, align 8
@DEC_Condition_IE = common dso_local global i8* null, align 8
@DEC_Insufficient_storage = common dso_local global i64 0, align 8
@DEC_Condition_IS = common dso_local global i8* null, align 8
@DEC_Invalid_context = common dso_local global i64 0, align 8
@DEC_Condition_IC = common dso_local global i8* null, align 8
@DEC_Invalid_operation = common dso_local global i64 0, align 8
@DEC_Condition_IO = common dso_local global i8* null, align 8
@DEC_Overflow = common dso_local global i64 0, align 8
@DEC_Condition_OV = common dso_local global i8* null, align 8
@DEC_Clamped = common dso_local global i64 0, align 8
@DEC_Condition_PA = common dso_local global i8* null, align 8
@DEC_Rounded = common dso_local global i64 0, align 8
@DEC_Condition_RO = common dso_local global i8* null, align 8
@DEC_Subnormal = common dso_local global i64 0, align 8
@DEC_Condition_SU = common dso_local global i8* null, align 8
@DEC_Underflow = common dso_local global i64 0, align 8
@DEC_Condition_UN = common dso_local global i8* null, align 8
@DEC_Condition_ZE = common dso_local global i8* null, align 8
@DEC_Condition_MU = common dso_local global i8* null, align 8
@DEC_Condition_LD = common dso_local global i8* null, align 8
@DEC_Lost_digits = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @decContextStatusToString(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  store i64 %7, i64* %4, align 8
  %8 = load i64, i64* %4, align 8
  %9 = load i64, i64* @DEC_Conversion_syntax, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i8*, i8** @DEC_Condition_CS, align 8
  store i8* %12, i8** %2, align 8
  br label %92

13:                                               ; preds = %1
  %14 = load i64, i64* %4, align 8
  %15 = load i64, i64* @DEC_Division_by_zero, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %13
  %18 = load i8*, i8** @DEC_Condition_DZ, align 8
  store i8* %18, i8** %2, align 8
  br label %92

19:                                               ; preds = %13
  %20 = load i64, i64* %4, align 8
  %21 = load i64, i64* @DEC_Division_impossible, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = load i8*, i8** @DEC_Condition_DI, align 8
  store i8* %24, i8** %2, align 8
  br label %92

25:                                               ; preds = %19
  %26 = load i64, i64* %4, align 8
  %27 = load i64, i64* @DEC_Division_undefined, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %25
  %30 = load i8*, i8** @DEC_Condition_DU, align 8
  store i8* %30, i8** %2, align 8
  br label %92

31:                                               ; preds = %25
  %32 = load i64, i64* %4, align 8
  %33 = load i64, i64* @DEC_Inexact, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %31
  %36 = load i8*, i8** @DEC_Condition_IE, align 8
  store i8* %36, i8** %2, align 8
  br label %92

37:                                               ; preds = %31
  %38 = load i64, i64* %4, align 8
  %39 = load i64, i64* @DEC_Insufficient_storage, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %37
  %42 = load i8*, i8** @DEC_Condition_IS, align 8
  store i8* %42, i8** %2, align 8
  br label %92

43:                                               ; preds = %37
  %44 = load i64, i64* %4, align 8
  %45 = load i64, i64* @DEC_Invalid_context, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %43
  %48 = load i8*, i8** @DEC_Condition_IC, align 8
  store i8* %48, i8** %2, align 8
  br label %92

49:                                               ; preds = %43
  %50 = load i64, i64* %4, align 8
  %51 = load i64, i64* @DEC_Invalid_operation, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %49
  %54 = load i8*, i8** @DEC_Condition_IO, align 8
  store i8* %54, i8** %2, align 8
  br label %92

55:                                               ; preds = %49
  %56 = load i64, i64* %4, align 8
  %57 = load i64, i64* @DEC_Overflow, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %55
  %60 = load i8*, i8** @DEC_Condition_OV, align 8
  store i8* %60, i8** %2, align 8
  br label %92

61:                                               ; preds = %55
  %62 = load i64, i64* %4, align 8
  %63 = load i64, i64* @DEC_Clamped, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %61
  %66 = load i8*, i8** @DEC_Condition_PA, align 8
  store i8* %66, i8** %2, align 8
  br label %92

67:                                               ; preds = %61
  %68 = load i64, i64* %4, align 8
  %69 = load i64, i64* @DEC_Rounded, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %73

71:                                               ; preds = %67
  %72 = load i8*, i8** @DEC_Condition_RO, align 8
  store i8* %72, i8** %2, align 8
  br label %92

73:                                               ; preds = %67
  %74 = load i64, i64* %4, align 8
  %75 = load i64, i64* @DEC_Subnormal, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %79

77:                                               ; preds = %73
  %78 = load i8*, i8** @DEC_Condition_SU, align 8
  store i8* %78, i8** %2, align 8
  br label %92

79:                                               ; preds = %73
  %80 = load i64, i64* %4, align 8
  %81 = load i64, i64* @DEC_Underflow, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %85

83:                                               ; preds = %79
  %84 = load i8*, i8** @DEC_Condition_UN, align 8
  store i8* %84, i8** %2, align 8
  br label %92

85:                                               ; preds = %79
  %86 = load i64, i64* %4, align 8
  %87 = icmp eq i64 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %85
  %89 = load i8*, i8** @DEC_Condition_ZE, align 8
  store i8* %89, i8** %2, align 8
  br label %92

90:                                               ; preds = %85
  %91 = load i8*, i8** @DEC_Condition_MU, align 8
  store i8* %91, i8** %2, align 8
  br label %92

92:                                               ; preds = %90, %88, %83, %77, %71, %65, %59, %53, %47, %41, %35, %29, %23, %17, %11
  %93 = load i8*, i8** %2, align 8
  ret i8* %93
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
