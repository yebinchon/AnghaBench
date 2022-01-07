; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_optabs.c_expand_copysign.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_optabs.c_expand_copysign.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_8__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }
%struct.real_format = type { i64, i64, i32 }

@copysign_optab = common dso_local global i32 0, align 4
@OPTAB_DIRECT = common dso_local global i32 0, align 4
@NULL_RTX = common dso_local global i64 0, align 8
@CONST_DOUBLE = common dso_local global i64 0, align 8
@ABS = common dso_local global i32 0, align 4
@neg_optab = common dso_local global %struct.TYPE_7__* null, align 8
@CODE_FOR_nothing = common dso_local global i64 0, align 8
@abs_optab = common dso_local global %struct.TYPE_8__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @expand_copysign(i64 %0, i64 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.real_format*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load i64, i64* %5, align 8
  %13 = call i32 @GET_MODE(i64 %12)
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = call i32 @SCALAR_FLOAT_MODE_P(i32 %14)
  %16 = call i32 @gcc_assert(i32 %15)
  %17 = load i64, i64* %6, align 8
  %18 = call i32 @GET_MODE(i64 %17)
  %19 = load i32, i32* %8, align 4
  %20 = icmp eq i32 %18, %19
  %21 = zext i1 %20 to i32
  %22 = call i32 @gcc_assert(i32 %21)
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* @copysign_optab, align 4
  %25 = load i64, i64* %5, align 8
  %26 = load i64, i64* %6, align 8
  %27 = load i64, i64* %7, align 8
  %28 = load i32, i32* @OPTAB_DIRECT, align 4
  %29 = call i64 @expand_binop(i32 %23, i32 %24, i64 %25, i64 %26, i64 %27, i32 0, i32 %28)
  store i64 %29, i64* %11, align 8
  %30 = load i64, i64* %11, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %3
  %33 = load i64, i64* %11, align 8
  store i64 %33, i64* %4, align 8
  br label %127

34:                                               ; preds = %3
  %35 = load i32, i32* %8, align 4
  %36 = call %struct.real_format* @REAL_MODE_FORMAT(i32 %35)
  store %struct.real_format* %36, %struct.real_format** %9, align 8
  %37 = load %struct.real_format*, %struct.real_format** %9, align 8
  %38 = icmp eq %struct.real_format* %37, null
  br i1 %38, label %44, label %39

39:                                               ; preds = %34
  %40 = load %struct.real_format*, %struct.real_format** %9, align 8
  %41 = getelementptr inbounds %struct.real_format, %struct.real_format* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %46, label %44

44:                                               ; preds = %39, %34
  %45 = load i64, i64* @NULL_RTX, align 8
  store i64 %45, i64* %4, align 8
  br label %127

46:                                               ; preds = %39
  store i32 0, i32* %10, align 4
  %47 = load i64, i64* %5, align 8
  %48 = call i64 @GET_CODE(i64 %47)
  %49 = load i64, i64* @CONST_DOUBLE, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %63

51:                                               ; preds = %46
  %52 = load i64, i64* %5, align 8
  %53 = call i32 @CONST_DOUBLE_REAL_VALUE(i64 %52)
  %54 = call i64 @real_isneg(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %51
  %57 = load i32, i32* @ABS, align 4
  %58 = load i32, i32* %8, align 4
  %59 = load i64, i64* %5, align 8
  %60 = load i32, i32* %8, align 4
  %61 = call i64 @simplify_unary_operation(i32 %57, i32 %58, i64 %59, i32 %60)
  store i64 %61, i64* %5, align 8
  br label %62

62:                                               ; preds = %56, %51
  store i32 1, i32* %10, align 4
  br label %63

63:                                               ; preds = %62, %46
  %64 = load %struct.real_format*, %struct.real_format** %9, align 8
  %65 = getelementptr inbounds %struct.real_format, %struct.real_format* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp sge i64 %66, 0
  br i1 %67, label %68, label %110

68:                                               ; preds = %63
  %69 = load i64, i64* %5, align 8
  %70 = call i64 @GET_CODE(i64 %69)
  %71 = load i64, i64* @CONST_DOUBLE, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %95, label %73

73:                                               ; preds = %68
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** @neg_optab, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %75, align 8
  %77 = load i32, i32* %8, align 4
  %78 = zext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @CODE_FOR_nothing, align 8
  %83 = icmp ne i64 %81, %82
  br i1 %83, label %84, label %110

84:                                               ; preds = %73
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** @abs_optab, align 8
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 0
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %86, align 8
  %88 = load i32, i32* %8, align 4
  %89 = zext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @CODE_FOR_nothing, align 8
  %94 = icmp ne i64 %92, %93
  br i1 %94, label %95, label %110

95:                                               ; preds = %84, %68
  %96 = load i32, i32* %8, align 4
  %97 = load i64, i64* %5, align 8
  %98 = load i64, i64* %6, align 8
  %99 = load i64, i64* %7, align 8
  %100 = load %struct.real_format*, %struct.real_format** %9, align 8
  %101 = getelementptr inbounds %struct.real_format, %struct.real_format* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load i32, i32* %10, align 4
  %104 = call i64 @expand_copysign_absneg(i32 %96, i64 %97, i64 %98, i64 %99, i64 %102, i32 %103)
  store i64 %104, i64* %11, align 8
  %105 = load i64, i64* %11, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %95
  %108 = load i64, i64* %11, align 8
  store i64 %108, i64* %4, align 8
  br label %127

109:                                              ; preds = %95
  br label %110

110:                                              ; preds = %109, %84, %73, %63
  %111 = load %struct.real_format*, %struct.real_format** %9, align 8
  %112 = getelementptr inbounds %struct.real_format, %struct.real_format* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = icmp slt i64 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %110
  %116 = load i64, i64* @NULL_RTX, align 8
  store i64 %116, i64* %4, align 8
  br label %127

117:                                              ; preds = %110
  %118 = load i32, i32* %8, align 4
  %119 = load i64, i64* %5, align 8
  %120 = load i64, i64* %6, align 8
  %121 = load i64, i64* %7, align 8
  %122 = load %struct.real_format*, %struct.real_format** %9, align 8
  %123 = getelementptr inbounds %struct.real_format, %struct.real_format* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = load i32, i32* %10, align 4
  %126 = call i64 @expand_copysign_bit(i32 %118, i64 %119, i64 %120, i64 %121, i64 %124, i32 %125)
  store i64 %126, i64* %4, align 8
  br label %127

127:                                              ; preds = %117, %115, %107, %44, %32
  %128 = load i64, i64* %4, align 8
  ret i64 %128
}

declare dso_local i32 @GET_MODE(i64) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @SCALAR_FLOAT_MODE_P(i32) #1

declare dso_local i64 @expand_binop(i32, i32, i64, i64, i64, i32, i32) #1

declare dso_local %struct.real_format* @REAL_MODE_FORMAT(i32) #1

declare dso_local i64 @GET_CODE(i64) #1

declare dso_local i64 @real_isneg(i32) #1

declare dso_local i32 @CONST_DOUBLE_REAL_VALUE(i64) #1

declare dso_local i64 @simplify_unary_operation(i32, i32, i64, i32) #1

declare dso_local i64 @expand_copysign_absneg(i32, i64, i64, i64, i64, i32) #1

declare dso_local i64 @expand_copysign_bit(i32, i64, i64, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
