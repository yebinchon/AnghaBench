; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_optabs.c_vector_compare_rtx.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_optabs.c_vector_compare_rtx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (i32, i64)* }

@NULL_RTX = common dso_local global i32 0, align 4
@insn_data = common dso_local global %struct.TYPE_4__* null, align 8
@VOIDmode = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @vector_compare_rtx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vector_compare_rtx(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @COMPARISON_CLASS_P(i32 %12)
  %14 = call i32 @gcc_assert(i32 %13)
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @TREE_CODE(i32 %15)
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @get_rtx_code(i32 %16, i32 %17)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @TREE_OPERAND(i32 %19, i32 0)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @TREE_OPERAND(i32 %21, i32 1)
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* @NULL_RTX, align 4
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @TREE_TYPE(i32 %25)
  %27 = call i32 @TYPE_MODE(i32 %26)
  %28 = call i32 @expand_expr(i32 %23, i32 %24, i32 %27, i32 1)
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* @NULL_RTX, align 4
  %31 = load i32, i32* %9, align 4
  %32 = call i32 @TREE_TYPE(i32 %31)
  %33 = call i32 @TYPE_MODE(i32 %32)
  %34 = call i32 @expand_expr(i32 %29, i32 %30, i32 %33, i32 1)
  store i32 %34, i32* %11, align 4
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** @insn_data, align 8
  %36 = load i32, i32* %6, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i64 4
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32 (i32, i64)*, i32 (i32, i64)** %42, align 8
  %44 = load i32, i32* %10, align 4
  %45 = load i32, i32* %10, align 4
  %46 = call i64 @GET_MODE(i32 %45)
  %47 = call i32 %43(i32 %44, i64 %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %59, label %49

49:                                               ; preds = %3
  %50 = load i32, i32* %10, align 4
  %51 = call i64 @GET_MODE(i32 %50)
  %52 = load i64, i64* @VOIDmode, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %59

54:                                               ; preds = %49
  %55 = load i32, i32* %10, align 4
  %56 = call i64 @GET_MODE(i32 %55)
  %57 = load i32, i32* %10, align 4
  %58 = call i32 @force_reg(i64 %56, i32 %57)
  store i32 %58, i32* %10, align 4
  br label %59

59:                                               ; preds = %54, %49, %3
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** @insn_data, align 8
  %61 = load i32, i32* %6, align 4
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i64 5
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  %68 = load i32 (i32, i64)*, i32 (i32, i64)** %67, align 8
  %69 = load i32, i32* %11, align 4
  %70 = load i32, i32* %11, align 4
  %71 = call i64 @GET_MODE(i32 %70)
  %72 = call i32 %68(i32 %69, i64 %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %84, label %74

74:                                               ; preds = %59
  %75 = load i32, i32* %11, align 4
  %76 = call i64 @GET_MODE(i32 %75)
  %77 = load i64, i64* @VOIDmode, align 8
  %78 = icmp ne i64 %76, %77
  br i1 %78, label %79, label %84

79:                                               ; preds = %74
  %80 = load i32, i32* %11, align 4
  %81 = call i64 @GET_MODE(i32 %80)
  %82 = load i32, i32* %11, align 4
  %83 = call i32 @force_reg(i64 %81, i32 %82)
  store i32 %83, i32* %11, align 4
  br label %84

84:                                               ; preds = %79, %74, %59
  %85 = load i32, i32* %7, align 4
  %86 = load i64, i64* @VOIDmode, align 8
  %87 = load i32, i32* %10, align 4
  %88 = load i32, i32* %11, align 4
  %89 = call i32 @gen_rtx_fmt_ee(i32 %85, i64 %86, i32 %87, i32 %88)
  ret i32 %89
}

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @COMPARISON_CLASS_P(i32) #1

declare dso_local i32 @get_rtx_code(i32, i32) #1

declare dso_local i32 @TREE_CODE(i32) #1

declare dso_local i32 @TREE_OPERAND(i32, i32) #1

declare dso_local i32 @expand_expr(i32, i32, i32, i32) #1

declare dso_local i32 @TYPE_MODE(i32) #1

declare dso_local i32 @TREE_TYPE(i32) #1

declare dso_local i64 @GET_MODE(i32) #1

declare dso_local i32 @force_reg(i64, i32) #1

declare dso_local i32 @gen_rtx_fmt_ee(i32, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
