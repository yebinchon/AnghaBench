; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libuutil/common/extr_uu_strtoint.c_uu_strtouint.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libuutil/common/extr_uu_strtoint.c_uu_strtouint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@UINT8_MAX = common dso_local global i64 0, align 8
@UINT16_MAX = common dso_local global i64 0, align 8
@UINT32_MAX = common dso_local global i64 0, align 8
@UINT64_MAX = common dso_local global i64 0, align 8
@UU_ERROR_UNDERFLOW = common dso_local global i32 0, align 4
@UU_ERROR_OVERFLOW = common dso_local global i32 0, align 4
@UU_ERROR_INVALID_ARGUMENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uu_strtouint(i8* %0, i8* %1, i64 %2, i32 %3, i64 %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store i8* %0, i8** %8, align 8
  store i8* %1, i8** %9, align 8
  store i64 %2, i64* %10, align 8
  store i32 %3, i32* %11, align 4
  store i64 %4, i64* %12, align 8
  store i64 %5, i64* %13, align 8
  %15 = load i64, i64* %12, align 8
  %16 = load i64, i64* %13, align 8
  %17 = icmp sgt i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %6
  br label %100

19:                                               ; preds = %6
  %20 = load i64, i64* %10, align 8
  switch i64 %20, label %45 [
    i64 1, label %21
    i64 2, label %27
    i64 4, label %33
    i64 8, label %39
  ]

21:                                               ; preds = %19
  %22 = load i64, i64* %13, align 8
  %23 = load i64, i64* @UINT8_MAX, align 8
  %24 = icmp sgt i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  br label %100

26:                                               ; preds = %21
  br label %46

27:                                               ; preds = %19
  %28 = load i64, i64* %13, align 8
  %29 = load i64, i64* @UINT16_MAX, align 8
  %30 = icmp sgt i64 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  br label %100

32:                                               ; preds = %27
  br label %46

33:                                               ; preds = %19
  %34 = load i64, i64* %13, align 8
  %35 = load i64, i64* @UINT32_MAX, align 8
  %36 = icmp sgt i64 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  br label %100

38:                                               ; preds = %33
  br label %46

39:                                               ; preds = %19
  %40 = load i64, i64* %13, align 8
  %41 = load i64, i64* @UINT64_MAX, align 8
  %42 = icmp sgt i64 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  br label %100

44:                                               ; preds = %39
  br label %46

45:                                               ; preds = %19
  br label %100

46:                                               ; preds = %44, %38, %32, %26
  %47 = load i64, i64* %12, align 8
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %59

49:                                               ; preds = %46
  %50 = load i64, i64* %13, align 8
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %49
  %53 = load i64, i64* %10, align 8
  %54 = mul i64 8, %53
  %55 = sub i64 %54, 1
  %56 = shl i64 1, %55
  %57 = mul i64 %56, 2
  %58 = sub i64 %57, 1
  store i64 %58, i64* %13, align 8
  br label %59

59:                                               ; preds = %52, %49, %46
  %60 = load i8*, i8** %8, align 8
  %61 = load i32, i32* %11, align 4
  %62 = call i32 @strtoint(i8* %60, i64* %14, i32 %61, i32 0)
  %63 = icmp eq i32 %62, -1
  br i1 %63, label %64, label %65

64:                                               ; preds = %59
  store i32 -1, i32* %7, align 4
  br label %103

65:                                               ; preds = %59
  %66 = load i64, i64* %14, align 8
  %67 = load i64, i64* %12, align 8
  %68 = icmp slt i64 %66, %67
  br i1 %68, label %69, label %72

69:                                               ; preds = %65
  %70 = load i32, i32* @UU_ERROR_UNDERFLOW, align 4
  %71 = call i32 @uu_set_error(i32 %70)
  store i32 -1, i32* %7, align 4
  br label %103

72:                                               ; preds = %65
  %73 = load i64, i64* %14, align 8
  %74 = load i64, i64* %13, align 8
  %75 = icmp sgt i64 %73, %74
  br i1 %75, label %76, label %79

76:                                               ; preds = %72
  %77 = load i32, i32* @UU_ERROR_OVERFLOW, align 4
  %78 = call i32 @uu_set_error(i32 %77)
  store i32 -1, i32* %7, align 4
  br label %103

79:                                               ; preds = %72
  br label %80

80:                                               ; preds = %79
  %81 = load i64, i64* %10, align 8
  switch i64 %81, label %98 [
    i64 1, label %82
    i64 2, label %86
    i64 4, label %90
    i64 8, label %94
  ]

82:                                               ; preds = %80
  %83 = load i64, i64* %14, align 8
  %84 = load i8*, i8** %9, align 8
  %85 = bitcast i8* %84 to i64*
  store i64 %83, i64* %85, align 8
  store i32 0, i32* %7, align 4
  br label %103

86:                                               ; preds = %80
  %87 = load i64, i64* %14, align 8
  %88 = load i8*, i8** %9, align 8
  %89 = bitcast i8* %88 to i64*
  store i64 %87, i64* %89, align 8
  store i32 0, i32* %7, align 4
  br label %103

90:                                               ; preds = %80
  %91 = load i64, i64* %14, align 8
  %92 = load i8*, i8** %9, align 8
  %93 = bitcast i8* %92 to i64*
  store i64 %91, i64* %93, align 8
  store i32 0, i32* %7, align 4
  br label %103

94:                                               ; preds = %80
  %95 = load i64, i64* %14, align 8
  %96 = load i8*, i8** %9, align 8
  %97 = bitcast i8* %96 to i64*
  store i64 %95, i64* %97, align 8
  store i32 0, i32* %7, align 4
  br label %103

98:                                               ; preds = %80
  br label %99

99:                                               ; preds = %98
  br label %100

100:                                              ; preds = %99, %45, %43, %37, %31, %25, %18
  %101 = load i32, i32* @UU_ERROR_INVALID_ARGUMENT, align 4
  %102 = call i32 @uu_set_error(i32 %101)
  store i32 -1, i32* %7, align 4
  br label %103

103:                                              ; preds = %100, %94, %90, %86, %82, %76, %69, %64
  %104 = load i32, i32* %7, align 4
  ret i32 %104
}

declare dso_local i32 @strtoint(i8*, i64*, i32, i32) #1

declare dso_local i32 @uu_set_error(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
