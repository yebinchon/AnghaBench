; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/rs6000/extr_rs6000.c_includes_rldicr_lshift_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/rs6000/extr_rs6000.c_includes_rldicr_lshift_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CONST_INT = common dso_local global i64 0, align 8
@CONST_DOUBLE = common dso_local global i64 0, align 8
@VOIDmode = common dso_local global i64 0, align 8
@DImode = common dso_local global i64 0, align 8
@HOST_BITS_PER_WIDE_INT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @includes_rldicr_lshift_p(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = call i64 @GET_CODE(i32 %14)
  %16 = load i64, i64* @CONST_INT, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %45

18:                                               ; preds = %2
  store i32 -1, i32* %8, align 4
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @INTVAL(i32 %19)
  %21 = load i32, i32* %8, align 4
  %22 = shl i32 %21, %20
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @INTVAL(i32 %23)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = sub nsw i32 0, %26
  %28 = and i32 %25, %27
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* %8, align 4
  %31 = and i32 %29, %30
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %18
  store i32 0, i32* %3, align 4
  br label %127

34:                                               ; preds = %18
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* %7, align 4
  %37 = sub nsw i32 0, %36
  %38 = icmp eq i32 %35, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %34
  %40 = load i32, i32* %7, align 4
  %41 = icmp ne i32 %40, 1
  br label %42

42:                                               ; preds = %39, %34
  %43 = phi i1 [ false, %34 ], [ %41, %39 ]
  %44 = zext i1 %43 to i32
  store i32 %44, i32* %3, align 4
  br label %127

45:                                               ; preds = %2
  %46 = load i32, i32* %5, align 4
  %47 = call i64 @GET_CODE(i32 %46)
  %48 = load i64, i64* @CONST_DOUBLE, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %126

50:                                               ; preds = %45
  %51 = load i32, i32* %5, align 4
  %52 = call i64 @GET_MODE(i32 %51)
  %53 = load i64, i64* @VOIDmode, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %60, label %55

55:                                               ; preds = %50
  %56 = load i32, i32* %5, align 4
  %57 = call i64 @GET_MODE(i32 %56)
  %58 = load i64, i64* @DImode, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %126

60:                                               ; preds = %55, %50
  %61 = load i32, i32* %5, align 4
  %62 = call i32 @CONST_DOUBLE_LOW(i32 %61)
  store i32 %62, i32* %9, align 4
  %63 = load i32, i32* @HOST_BITS_PER_WIDE_INT, align 4
  %64 = icmp slt i32 %63, 64
  br i1 %64, label %65, label %101

65:                                               ; preds = %60
  %66 = load i32, i32* %5, align 4
  %67 = call i32 @CONST_DOUBLE_HIGH(i32 %66)
  store i32 %67, i32* %12, align 4
  %68 = load i32, i32* %9, align 4
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %96

70:                                               ; preds = %65
  store i32 -1, i32* %13, align 4
  %71 = load i32, i32* %4, align 4
  %72 = call i32 @INTVAL(i32 %71)
  %73 = icmp sgt i32 %72, 32
  br i1 %73, label %74, label %80

74:                                               ; preds = %70
  %75 = load i32, i32* %4, align 4
  %76 = call i32 @INTVAL(i32 %75)
  %77 = sub nsw i32 %76, 32
  %78 = load i32, i32* %13, align 4
  %79 = shl i32 %78, %77
  store i32 %79, i32* %13, align 4
  br label %80

80:                                               ; preds = %74, %70
  %81 = load i32, i32* %12, align 4
  %82 = load i32, i32* %12, align 4
  %83 = sub nsw i32 0, %82
  %84 = and i32 %81, %83
  store i32 %84, i32* %10, align 4
  %85 = load i32, i32* %10, align 4
  %86 = load i32, i32* %13, align 4
  %87 = and i32 %85, %86
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %80
  store i32 0, i32* %3, align 4
  br label %127

90:                                               ; preds = %80
  %91 = load i32, i32* %12, align 4
  %92 = load i32, i32* %10, align 4
  %93 = sub nsw i32 0, %92
  %94 = icmp eq i32 %91, %93
  %95 = zext i1 %94 to i32
  store i32 %95, i32* %3, align 4
  br label %127

96:                                               ; preds = %65
  %97 = load i32, i32* %12, align 4
  %98 = icmp ne i32 %97, -1
  br i1 %98, label %99, label %100

99:                                               ; preds = %96
  store i32 0, i32* %3, align 4
  br label %127

100:                                              ; preds = %96
  br label %101

101:                                              ; preds = %100, %60
  store i32 -1, i32* %11, align 4
  %102 = load i32, i32* %4, align 4
  %103 = call i32 @INTVAL(i32 %102)
  %104 = load i32, i32* %11, align 4
  %105 = shl i32 %104, %103
  store i32 %105, i32* %11, align 4
  %106 = load i32, i32* %9, align 4
  %107 = load i32, i32* %9, align 4
  %108 = sub nsw i32 0, %107
  %109 = and i32 %106, %108
  store i32 %109, i32* %10, align 4
  %110 = load i32, i32* %10, align 4
  %111 = load i32, i32* %11, align 4
  %112 = and i32 %110, %111
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %101
  store i32 0, i32* %3, align 4
  br label %127

115:                                              ; preds = %101
  %116 = load i32, i32* %9, align 4
  %117 = load i32, i32* %10, align 4
  %118 = sub nsw i32 0, %117
  %119 = icmp eq i32 %116, %118
  br i1 %119, label %120, label %123

120:                                              ; preds = %115
  %121 = load i32, i32* %10, align 4
  %122 = icmp ne i32 %121, 1
  br label %123

123:                                              ; preds = %120, %115
  %124 = phi i1 [ false, %115 ], [ %122, %120 ]
  %125 = zext i1 %124 to i32
  store i32 %125, i32* %3, align 4
  br label %127

126:                                              ; preds = %55, %45
  store i32 0, i32* %3, align 4
  br label %127

127:                                              ; preds = %126, %123, %114, %99, %90, %89, %42, %33
  %128 = load i32, i32* %3, align 4
  ret i32 %128
}

declare dso_local i64 @GET_CODE(i32) #1

declare dso_local i32 @INTVAL(i32) #1

declare dso_local i64 @GET_MODE(i32) #1

declare dso_local i32 @CONST_DOUBLE_LOW(i32) #1

declare dso_local i32 @CONST_DOUBLE_HIGH(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
