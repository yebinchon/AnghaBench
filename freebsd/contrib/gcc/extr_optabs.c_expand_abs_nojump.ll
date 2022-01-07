; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_optabs.c_expand_abs_nojump.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_optabs.c_expand_abs_nojump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64 }

@flag_trapv = common dso_local global i32 0, align 4
@abs_optab = common dso_local global i32 0, align 4
@absv_optab = common dso_local global i32 0, align 4
@ABS = common dso_local global i32 0, align 4
@smax_optab = common dso_local global %struct.TYPE_8__* null, align 8
@CODE_FOR_nothing = common dso_local global i64 0, align 8
@neg_optab = common dso_local global i32 0, align 4
@NULL_RTX = common dso_local global i64 0, align 8
@OPTAB_WIDEN = common dso_local global i32 0, align 4
@MODE_INT = common dso_local global i64 0, align 8
@BRANCH_COST = common dso_local global i32 0, align 4
@RSHIFT_EXPR = common dso_local global i32 0, align 4
@xor_optab = common dso_local global %struct.TYPE_8__* null, align 8
@OPTAB_LIB_WIDEN = common dso_local global i32 0, align 4
@sub_optab = common dso_local global %struct.TYPE_8__* null, align 8
@subv_optab = common dso_local global %struct.TYPE_8__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @expand_abs_nojump(i32 %0, i64 %1, i64 %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load i32, i32* @flag_trapv, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %4
  store i32 1, i32* %9, align 4
  br label %16

16:                                               ; preds = %15, %4
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* %9, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = load i32, i32* @abs_optab, align 4
  br label %24

22:                                               ; preds = %16
  %23 = load i32, i32* @absv_optab, align 4
  br label %24

24:                                               ; preds = %22, %20
  %25 = phi i32 [ %21, %20 ], [ %23, %22 ]
  %26 = load i64, i64* %7, align 8
  %27 = load i64, i64* %8, align 8
  %28 = call i64 @expand_unop(i32 %17, i32 %25, i64 %26, i64 %27, i32 0)
  store i64 %28, i64* %10, align 8
  %29 = load i64, i64* %10, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %24
  %32 = load i64, i64* %10, align 8
  store i64 %32, i64* %5, align 8
  br label %138

33:                                               ; preds = %24
  %34 = load i32, i32* %6, align 4
  %35 = call i64 @SCALAR_FLOAT_MODE_P(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %48

37:                                               ; preds = %33
  %38 = load i32, i32* @ABS, align 4
  %39 = load i32, i32* %6, align 4
  %40 = load i64, i64* %7, align 8
  %41 = load i64, i64* %8, align 8
  %42 = call i64 @expand_absneg_bit(i32 %38, i32 %39, i64 %40, i64 %41)
  store i64 %42, i64* %10, align 8
  %43 = load i64, i64* %10, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %37
  %46 = load i64, i64* %10, align 8
  store i64 %46, i64* %5, align 8
  br label %138

47:                                               ; preds = %37
  br label %48

48:                                               ; preds = %47, %33
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** @smax_optab, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %50, align 8
  %52 = load i32, i32* %6, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @CODE_FOR_nothing, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %59, label %88

59:                                               ; preds = %48
  %60 = load i32, i32* %6, align 4
  %61 = call i32 @HONOR_SIGNED_ZEROS(i32 %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %88, label %63

63:                                               ; preds = %59
  %64 = call i64 (...) @get_last_insn()
  store i64 %64, i64* %11, align 8
  %65 = load i32, i32* %6, align 4
  %66 = load i32, i32* @neg_optab, align 4
  %67 = load i64, i64* %7, align 8
  %68 = load i64, i64* @NULL_RTX, align 8
  %69 = call i64 @expand_unop(i32 %65, i32 %66, i64 %67, i64 %68, i32 0)
  store i64 %69, i64* %10, align 8
  %70 = load i64, i64* %10, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %80

72:                                               ; preds = %63
  %73 = load i32, i32* %6, align 4
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** @smax_optab, align 8
  %75 = load i64, i64* %7, align 8
  %76 = load i64, i64* %10, align 8
  %77 = load i64, i64* %8, align 8
  %78 = load i32, i32* @OPTAB_WIDEN, align 4
  %79 = call i64 @expand_binop(i32 %73, %struct.TYPE_8__* %74, i64 %75, i64 %76, i64 %77, i32 0, i32 %78)
  store i64 %79, i64* %10, align 8
  br label %80

80:                                               ; preds = %72, %63
  %81 = load i64, i64* %10, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %80
  %84 = load i64, i64* %10, align 8
  store i64 %84, i64* %5, align 8
  br label %138

85:                                               ; preds = %80
  %86 = load i64, i64* %11, align 8
  %87 = call i32 @delete_insns_since(i64 %86)
  br label %88

88:                                               ; preds = %85, %59, %48
  %89 = load i32, i32* %6, align 4
  %90 = call i64 @GET_MODE_CLASS(i32 %89)
  %91 = load i64, i64* @MODE_INT, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %136

93:                                               ; preds = %88
  %94 = load i32, i32* @BRANCH_COST, align 4
  %95 = icmp sge i32 %94, 2
  br i1 %95, label %96, label %136

96:                                               ; preds = %93
  %97 = load i32, i32* @RSHIFT_EXPR, align 4
  %98 = load i32, i32* %6, align 4
  %99 = load i64, i64* %7, align 8
  %100 = load i32, i32* %6, align 4
  %101 = call i64 @GET_MODE_BITSIZE(i32 %100)
  %102 = sub nsw i64 %101, 1
  %103 = call i32 @size_int(i64 %102)
  %104 = load i64, i64* @NULL_RTX, align 8
  %105 = call i64 @expand_shift(i32 %97, i32 %98, i64 %99, i32 %103, i64 %104, i32 0)
  store i64 %105, i64* %12, align 8
  %106 = load i32, i32* %6, align 4
  %107 = load %struct.TYPE_8__*, %struct.TYPE_8__** @xor_optab, align 8
  %108 = load i64, i64* %12, align 8
  %109 = load i64, i64* %7, align 8
  %110 = load i64, i64* %8, align 8
  %111 = load i32, i32* @OPTAB_LIB_WIDEN, align 4
  %112 = call i64 @expand_binop(i32 %106, %struct.TYPE_8__* %107, i64 %108, i64 %109, i64 %110, i32 0, i32 %111)
  store i64 %112, i64* %10, align 8
  %113 = load i64, i64* %10, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %130

115:                                              ; preds = %96
  %116 = load i32, i32* %6, align 4
  %117 = load i32, i32* %9, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %121

119:                                              ; preds = %115
  %120 = load %struct.TYPE_8__*, %struct.TYPE_8__** @sub_optab, align 8
  br label %123

121:                                              ; preds = %115
  %122 = load %struct.TYPE_8__*, %struct.TYPE_8__** @subv_optab, align 8
  br label %123

123:                                              ; preds = %121, %119
  %124 = phi %struct.TYPE_8__* [ %120, %119 ], [ %122, %121 ]
  %125 = load i64, i64* %10, align 8
  %126 = load i64, i64* %12, align 8
  %127 = load i64, i64* %8, align 8
  %128 = load i32, i32* @OPTAB_LIB_WIDEN, align 4
  %129 = call i64 @expand_binop(i32 %116, %struct.TYPE_8__* %124, i64 %125, i64 %126, i64 %127, i32 0, i32 %128)
  store i64 %129, i64* %10, align 8
  br label %130

130:                                              ; preds = %123, %96
  %131 = load i64, i64* %10, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %135

133:                                              ; preds = %130
  %134 = load i64, i64* %10, align 8
  store i64 %134, i64* %5, align 8
  br label %138

135:                                              ; preds = %130
  br label %136

136:                                              ; preds = %135, %93, %88
  %137 = load i64, i64* @NULL_RTX, align 8
  store i64 %137, i64* %5, align 8
  br label %138

138:                                              ; preds = %136, %133, %83, %45, %31
  %139 = load i64, i64* %5, align 8
  ret i64 %139
}

declare dso_local i64 @expand_unop(i32, i32, i64, i64, i32) #1

declare dso_local i64 @SCALAR_FLOAT_MODE_P(i32) #1

declare dso_local i64 @expand_absneg_bit(i32, i32, i64, i64) #1

declare dso_local i32 @HONOR_SIGNED_ZEROS(i32) #1

declare dso_local i64 @get_last_insn(...) #1

declare dso_local i64 @expand_binop(i32, %struct.TYPE_8__*, i64, i64, i64, i32, i32) #1

declare dso_local i32 @delete_insns_since(i64) #1

declare dso_local i64 @GET_MODE_CLASS(i32) #1

declare dso_local i64 @expand_shift(i32, i32, i64, i32, i64, i32) #1

declare dso_local i32 @size_int(i64) #1

declare dso_local i64 @GET_MODE_BITSIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
