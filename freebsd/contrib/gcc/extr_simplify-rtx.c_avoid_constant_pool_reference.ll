; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_simplify-rtx.c_avoid_constant_pool_reference.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_simplify-rtx.c_avoid_constant_pool_reference.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 (i64)* }

@CONST_DOUBLE = common dso_local global i64 0, align 8
@targetm = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@CONST = common dso_local global i64 0, align 8
@PLUS = common dso_local global i64 0, align 8
@CONST_INT = common dso_local global i64 0, align 8
@LO_SUM = common dso_local global i64 0, align 8
@SYMBOL_REF = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @avoid_constant_pool_reference(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 0, i64* %8, align 8
  %11 = load i64, i64* %3, align 8
  %12 = call i64 @GET_CODE(i64 %11)
  switch i64 %12, label %37 [
    i64 128, label %13
    i64 129, label %14
  ]

13:                                               ; preds = %1
  br label %39

14:                                               ; preds = %1
  %15 = load i64, i64* %3, align 8
  %16 = call i64 @XEXP(i64 %15, i32 0)
  store i64 %16, i64* %5, align 8
  %17 = load i64, i64* %5, align 8
  %18 = call i64 @avoid_constant_pool_reference(i64 %17)
  store i64 %18, i64* %4, align 8
  %19 = load i64, i64* %4, align 8
  %20 = load i64, i64* %5, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %35

22:                                               ; preds = %14
  %23 = load i64, i64* %4, align 8
  %24 = call i64 @GET_CODE(i64 %23)
  %25 = load i64, i64* @CONST_DOUBLE, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %35

27:                                               ; preds = %22
  %28 = load i32, i32* %9, align 4
  %29 = load i64, i64* %4, align 8
  %30 = call i32 @REAL_VALUE_FROM_CONST_DOUBLE(i32 %28, i64 %29)
  %31 = load i32, i32* %9, align 4
  %32 = load i64, i64* %3, align 8
  %33 = call i32 @GET_MODE(i64 %32)
  %34 = call i64 @CONST_DOUBLE_FROM_REAL_VALUE(i32 %31, i32 %33)
  store i64 %34, i64* %2, align 8
  br label %120

35:                                               ; preds = %22, %14
  %36 = load i64, i64* %3, align 8
  store i64 %36, i64* %2, align 8
  br label %120

37:                                               ; preds = %1
  %38 = load i64, i64* %3, align 8
  store i64 %38, i64* %2, align 8
  br label %120

39:                                               ; preds = %13
  %40 = load i64, i64* %3, align 8
  %41 = call i64 @XEXP(i64 %40, i32 0)
  store i64 %41, i64* %6, align 8
  %42 = load i64 (i64)*, i64 (i64)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @targetm, i32 0, i32 0), align 8
  %43 = load i64, i64* %6, align 8
  %44 = call i64 %42(i64 %43)
  store i64 %44, i64* %6, align 8
  %45 = load i64, i64* %6, align 8
  %46 = call i64 @GET_CODE(i64 %45)
  %47 = load i64, i64* @CONST, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %70

49:                                               ; preds = %39
  %50 = load i64, i64* %6, align 8
  %51 = call i64 @XEXP(i64 %50, i32 0)
  %52 = call i64 @GET_CODE(i64 %51)
  %53 = load i64, i64* @PLUS, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %70

55:                                               ; preds = %49
  %56 = load i64, i64* %6, align 8
  %57 = call i64 @XEXP(i64 %56, i32 0)
  %58 = call i64 @XEXP(i64 %57, i32 1)
  %59 = call i64 @GET_CODE(i64 %58)
  %60 = load i64, i64* @CONST_INT, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %70

62:                                               ; preds = %55
  %63 = load i64, i64* %6, align 8
  %64 = call i64 @XEXP(i64 %63, i32 0)
  %65 = call i64 @XEXP(i64 %64, i32 1)
  %66 = call i64 @INTVAL(i64 %65)
  store i64 %66, i64* %8, align 8
  %67 = load i64, i64* %6, align 8
  %68 = call i64 @XEXP(i64 %67, i32 0)
  %69 = call i64 @XEXP(i64 %68, i32 0)
  store i64 %69, i64* %6, align 8
  br label %70

70:                                               ; preds = %62, %55, %49, %39
  %71 = load i64, i64* %6, align 8
  %72 = call i64 @GET_CODE(i64 %71)
  %73 = load i64, i64* @LO_SUM, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %78

75:                                               ; preds = %70
  %76 = load i64, i64* %6, align 8
  %77 = call i64 @XEXP(i64 %76, i32 1)
  store i64 %77, i64* %6, align 8
  br label %78

78:                                               ; preds = %75, %70
  %79 = load i64, i64* %6, align 8
  %80 = call i64 @GET_CODE(i64 %79)
  %81 = load i64, i64* @SYMBOL_REF, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %118

83:                                               ; preds = %78
  %84 = load i64, i64* %6, align 8
  %85 = call i64 @CONSTANT_POOL_ADDRESS_P(i64 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %118

87:                                               ; preds = %83
  %88 = load i64, i64* %6, align 8
  %89 = call i64 @get_pool_constant(i64 %88)
  store i64 %89, i64* %4, align 8
  %90 = load i64, i64* %6, align 8
  %91 = call i32 @get_pool_mode(i64 %90)
  store i32 %91, i32* %7, align 4
  %92 = load i64, i64* %8, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %99, label %94

94:                                               ; preds = %87
  %95 = load i32, i32* %7, align 4
  %96 = load i64, i64* %3, align 8
  %97 = call i32 @GET_MODE(i64 %96)
  %98 = icmp ne i32 %95, %97
  br i1 %98, label %99, label %115

99:                                               ; preds = %94, %87
  %100 = load i64, i64* %3, align 8
  %101 = call i32 @GET_MODE(i64 %100)
  %102 = load i64, i64* %4, align 8
  %103 = load i32, i32* %7, align 4
  %104 = load i64, i64* %8, align 8
  %105 = call i64 @simplify_subreg(i32 %101, i64 %102, i32 %103, i64 %104)
  store i64 %105, i64* %10, align 8
  %106 = load i64, i64* %10, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %114

108:                                              ; preds = %99
  %109 = load i64, i64* %10, align 8
  %110 = call i64 @CONSTANT_P(i64 %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %108
  %113 = load i64, i64* %10, align 8
  store i64 %113, i64* %2, align 8
  br label %120

114:                                              ; preds = %108, %99
  br label %117

115:                                              ; preds = %94
  %116 = load i64, i64* %4, align 8
  store i64 %116, i64* %2, align 8
  br label %120

117:                                              ; preds = %114
  br label %118

118:                                              ; preds = %117, %83, %78
  %119 = load i64, i64* %3, align 8
  store i64 %119, i64* %2, align 8
  br label %120

120:                                              ; preds = %118, %115, %112, %37, %35, %27
  %121 = load i64, i64* %2, align 8
  ret i64 %121
}

declare dso_local i64 @GET_CODE(i64) #1

declare dso_local i64 @XEXP(i64, i32) #1

declare dso_local i32 @REAL_VALUE_FROM_CONST_DOUBLE(i32, i64) #1

declare dso_local i64 @CONST_DOUBLE_FROM_REAL_VALUE(i32, i32) #1

declare dso_local i32 @GET_MODE(i64) #1

declare dso_local i64 @INTVAL(i64) #1

declare dso_local i64 @CONSTANT_POOL_ADDRESS_P(i64) #1

declare dso_local i64 @get_pool_constant(i64) #1

declare dso_local i32 @get_pool_mode(i64) #1

declare dso_local i64 @simplify_subreg(i32, i64, i32, i64) #1

declare dso_local i64 @CONSTANT_P(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
