; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_optabs.c_widen_clz.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_optabs.c_widen_clz.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }

@VOIDmode = common dso_local global i32 0, align 4
@clz_optab = common dso_local global %struct.TYPE_5__* null, align 8
@CODE_FOR_nothing = common dso_local global i64 0, align 8
@NULL_RTX = common dso_local global i32 0, align 4
@sub_optab = common dso_local global i32 0, align 4
@OPTAB_DIRECT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i64, i64)* @widen_clz to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @widen_clz(i32 %0, i64 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @GET_MODE_CLASS(i32 %13)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = call i64 @CLASS_HAS_WIDER_MODES_P(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %81

18:                                               ; preds = %3
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @GET_MODE_WIDER_MODE(i32 %19)
  store i32 %20, i32* %9, align 4
  br label %21

21:                                               ; preds = %77, %18
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* @VOIDmode, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %25, label %80

25:                                               ; preds = %21
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** @clz_optab, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = load i32, i32* %9, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @CODE_FOR_nothing, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %76

36:                                               ; preds = %25
  %37 = call i64 (...) @get_last_insn()
  store i64 %37, i64* %12, align 8
  %38 = load i64, i64* %7, align 8
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %36
  %41 = load i32, i32* %5, align 4
  %42 = call i64 @gen_reg_rtx(i32 %41)
  store i64 %42, i64* %7, align 8
  br label %43

43:                                               ; preds = %40, %36
  %44 = load i64, i64* %6, align 8
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* %5, align 4
  %47 = call i64 @widen_operand(i64 %44, i32 %45, i32 %46, i32 1, i32 0)
  store i64 %47, i64* %10, align 8
  %48 = load i32, i32* %9, align 4
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** @clz_optab, align 8
  %50 = load i64, i64* %10, align 8
  %51 = load i32, i32* @NULL_RTX, align 4
  %52 = call i64 @expand_unop(i32 %48, %struct.TYPE_5__* %49, i64 %50, i32 %51, i32 1)
  store i64 %52, i64* %11, align 8
  %53 = load i64, i64* %11, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %68

55:                                               ; preds = %43
  %56 = load i32, i32* %9, align 4
  %57 = load i32, i32* @sub_optab, align 4
  %58 = load i64, i64* %11, align 8
  %59 = load i32, i32* %9, align 4
  %60 = call i64 @GET_MODE_BITSIZE(i32 %59)
  %61 = load i32, i32* %5, align 4
  %62 = call i64 @GET_MODE_BITSIZE(i32 %61)
  %63 = sub nsw i64 %60, %62
  %64 = call i32 @GEN_INT(i64 %63)
  %65 = load i64, i64* %7, align 8
  %66 = load i32, i32* @OPTAB_DIRECT, align 4
  %67 = call i64 @expand_binop(i32 %56, i32 %57, i64 %58, i32 %64, i64 %65, i32 1, i32 %66)
  store i64 %67, i64* %11, align 8
  br label %68

68:                                               ; preds = %55, %43
  %69 = load i64, i64* %11, align 8
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %68
  %72 = load i64, i64* %12, align 8
  %73 = call i32 @delete_insns_since(i64 %72)
  br label %74

74:                                               ; preds = %71, %68
  %75 = load i64, i64* %11, align 8
  store i64 %75, i64* %4, align 8
  br label %82

76:                                               ; preds = %25
  br label %77

77:                                               ; preds = %76
  %78 = load i32, i32* %9, align 4
  %79 = call i32 @GET_MODE_WIDER_MODE(i32 %78)
  store i32 %79, i32* %9, align 4
  br label %21

80:                                               ; preds = %21
  br label %81

81:                                               ; preds = %80, %3
  store i64 0, i64* %4, align 8
  br label %82

82:                                               ; preds = %81, %74
  %83 = load i64, i64* %4, align 8
  ret i64 %83
}

declare dso_local i32 @GET_MODE_CLASS(i32) #1

declare dso_local i64 @CLASS_HAS_WIDER_MODES_P(i32) #1

declare dso_local i32 @GET_MODE_WIDER_MODE(i32) #1

declare dso_local i64 @get_last_insn(...) #1

declare dso_local i64 @gen_reg_rtx(i32) #1

declare dso_local i64 @widen_operand(i64, i32, i32, i32, i32) #1

declare dso_local i64 @expand_unop(i32, %struct.TYPE_5__*, i64, i32, i32) #1

declare dso_local i64 @expand_binop(i32, i32, i64, i32, i64, i32, i32) #1

declare dso_local i32 @GEN_INT(i64) #1

declare dso_local i64 @GET_MODE_BITSIZE(i32) #1

declare dso_local i32 @delete_insns_since(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
