; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_optabs.c_expand_parity.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_optabs.c_expand_parity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }

@VOIDmode = common dso_local global i32 0, align 4
@popcount_optab = common dso_local global %struct.TYPE_5__* null, align 8
@CODE_FOR_nothing = common dso_local global i64 0, align 8
@NULL_RTX = common dso_local global i32 0, align 4
@and_optab = common dso_local global i32 0, align 4
@const1_rtx = common dso_local global i32 0, align 4
@OPTAB_DIRECT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i64, i64)* @expand_parity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @expand_parity(i32 %0, i64 %1, i64 %2) #0 {
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
  br i1 %17, label %18, label %75

18:                                               ; preds = %3
  %19 = load i32, i32* %5, align 4
  store i32 %19, i32* %9, align 4
  br label %20

20:                                               ; preds = %71, %18
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* @VOIDmode, align 4
  %23 = icmp ne i32 %21, %22
  br i1 %23, label %24, label %74

24:                                               ; preds = %20
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** @popcount_optab, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = load i32, i32* %9, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @CODE_FOR_nothing, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %70

35:                                               ; preds = %24
  %36 = call i64 (...) @get_last_insn()
  store i64 %36, i64* %12, align 8
  %37 = load i64, i64* %7, align 8
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %35
  %40 = load i32, i32* %5, align 4
  %41 = call i64 @gen_reg_rtx(i32 %40)
  store i64 %41, i64* %7, align 8
  br label %42

42:                                               ; preds = %39, %35
  %43 = load i64, i64* %6, align 8
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* %5, align 4
  %46 = call i64 @widen_operand(i64 %43, i32 %44, i32 %45, i32 1, i32 0)
  store i64 %46, i64* %10, align 8
  %47 = load i32, i32* %9, align 4
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** @popcount_optab, align 8
  %49 = load i64, i64* %10, align 8
  %50 = load i32, i32* @NULL_RTX, align 4
  %51 = call i64 @expand_unop(i32 %47, %struct.TYPE_5__* %48, i64 %49, i32 %50, i32 1)
  store i64 %51, i64* %11, align 8
  %52 = load i64, i64* %11, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %62

54:                                               ; preds = %42
  %55 = load i32, i32* %9, align 4
  %56 = load i32, i32* @and_optab, align 4
  %57 = load i64, i64* %11, align 8
  %58 = load i32, i32* @const1_rtx, align 4
  %59 = load i64, i64* %7, align 8
  %60 = load i32, i32* @OPTAB_DIRECT, align 4
  %61 = call i64 @expand_binop(i32 %55, i32 %56, i64 %57, i32 %58, i64 %59, i32 1, i32 %60)
  store i64 %61, i64* %11, align 8
  br label %62

62:                                               ; preds = %54, %42
  %63 = load i64, i64* %11, align 8
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %62
  %66 = load i64, i64* %12, align 8
  %67 = call i32 @delete_insns_since(i64 %66)
  br label %68

68:                                               ; preds = %65, %62
  %69 = load i64, i64* %11, align 8
  store i64 %69, i64* %4, align 8
  br label %76

70:                                               ; preds = %24
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %9, align 4
  %73 = call i32 @GET_MODE_WIDER_MODE(i32 %72)
  store i32 %73, i32* %9, align 4
  br label %20

74:                                               ; preds = %20
  br label %75

75:                                               ; preds = %74, %3
  store i64 0, i64* %4, align 8
  br label %76

76:                                               ; preds = %75, %68
  %77 = load i64, i64* %4, align 8
  ret i64 %77
}

declare dso_local i32 @GET_MODE_CLASS(i32) #1

declare dso_local i64 @CLASS_HAS_WIDER_MODES_P(i32) #1

declare dso_local i64 @get_last_insn(...) #1

declare dso_local i64 @gen_reg_rtx(i32) #1

declare dso_local i64 @widen_operand(i64, i32, i32, i32, i32) #1

declare dso_local i64 @expand_unop(i32, %struct.TYPE_5__*, i64, i32, i32) #1

declare dso_local i64 @expand_binop(i32, i32, i64, i32, i64, i32, i32) #1

declare dso_local i32 @delete_insns_since(i64) #1

declare dso_local i32 @GET_MODE_WIDER_MODE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
