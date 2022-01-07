; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_builtins.c_expand_builtin_sincos.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_builtins.c_expand_builtin_sincos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }

@REAL_TYPE = common dso_local global i32 0, align 4
@POINTER_TYPE = common dso_local global i32 0, align 4
@VOID_TYPE = common dso_local global i32 0, align 4
@sincos_optab = common dso_local global %struct.TYPE_5__* null, align 8
@CODE_FOR_nothing = common dso_local global i64 0, align 8
@NULL_RTX = common dso_local global i32 0, align 4
@const0_rtx = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @expand_builtin_sincos to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @expand_builtin_sincos(i32 %0) #0 {
  %2 = alloca i32, align 4
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
  %14 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @TREE_OPERAND(i32 %15, i32 1)
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* @REAL_TYPE, align 4
  %19 = load i32, i32* @POINTER_TYPE, align 4
  %20 = load i32, i32* @POINTER_TYPE, align 4
  %21 = load i32, i32* @VOID_TYPE, align 4
  %22 = call i32 @validate_arglist(i32 %17, i32 %18, i32 %19, i32 %20, i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %77

25:                                               ; preds = %1
  %26 = load i32, i32* %9, align 4
  %27 = call i32 @TREE_VALUE(i32 %26)
  store i32 %27, i32* %11, align 4
  %28 = load i32, i32* %9, align 4
  %29 = call i32 @TREE_CHAIN(i32 %28)
  %30 = call i32 @TREE_VALUE(i32 %29)
  store i32 %30, i32* %12, align 4
  %31 = load i32, i32* %9, align 4
  %32 = call i32 @TREE_CHAIN(i32 %31)
  %33 = call i32 @TREE_CHAIN(i32 %32)
  %34 = call i32 @TREE_VALUE(i32 %33)
  store i32 %34, i32* %13, align 4
  %35 = load i32, i32* %11, align 4
  %36 = call i32 @TREE_TYPE(i32 %35)
  %37 = call i32 @TYPE_MODE(i32 %36)
  store i32 %37, i32* %10, align 4
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** @sincos_optab, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = load i32, i32* %10, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @CODE_FOR_nothing, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %25
  %49 = load i32, i32* @NULL_RTX, align 4
  store i32 %49, i32* %2, align 4
  br label %77

50:                                               ; preds = %25
  %51 = load i32, i32* %10, align 4
  %52 = call i32 @gen_reg_rtx(i32 %51)
  store i32 %52, i32* %7, align 4
  %53 = load i32, i32* %10, align 4
  %54 = call i32 @gen_reg_rtx(i32 %53)
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* %11, align 4
  %56 = call i32 @expand_normal(i32 %55)
  store i32 %56, i32* %4, align 4
  %57 = load i32, i32* %12, align 4
  %58 = call i32 @build_fold_indirect_ref(i32 %57)
  %59 = call i32 @expand_normal(i32 %58)
  store i32 %59, i32* %5, align 4
  %60 = load i32, i32* %13, align 4
  %61 = call i32 @build_fold_indirect_ref(i32 %60)
  %62 = call i32 @expand_normal(i32 %61)
  store i32 %62, i32* %6, align 4
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** @sincos_optab, align 8
  %64 = load i32, i32* %4, align 4
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* %7, align 4
  %67 = call i32 @expand_twoval_unop(%struct.TYPE_5__* %63, i32 %64, i32 %65, i32 %66, i32 0)
  store i32 %67, i32* %14, align 4
  %68 = load i32, i32* %14, align 4
  %69 = call i32 @gcc_assert(i32 %68)
  %70 = load i32, i32* %5, align 4
  %71 = load i32, i32* %7, align 4
  %72 = call i32 @emit_move_insn(i32 %70, i32 %71)
  %73 = load i32, i32* %6, align 4
  %74 = load i32, i32* %8, align 4
  %75 = call i32 @emit_move_insn(i32 %73, i32 %74)
  %76 = load i32, i32* @const0_rtx, align 4
  store i32 %76, i32* %2, align 4
  br label %77

77:                                               ; preds = %50, %48, %24
  %78 = load i32, i32* %2, align 4
  ret i32 %78
}

declare dso_local i32 @TREE_OPERAND(i32, i32) #1

declare dso_local i32 @validate_arglist(i32, i32, i32, i32, i32) #1

declare dso_local i32 @TREE_VALUE(i32) #1

declare dso_local i32 @TREE_CHAIN(i32) #1

declare dso_local i32 @TYPE_MODE(i32) #1

declare dso_local i32 @TREE_TYPE(i32) #1

declare dso_local i32 @gen_reg_rtx(i32) #1

declare dso_local i32 @expand_normal(i32) #1

declare dso_local i32 @build_fold_indirect_ref(i32) #1

declare dso_local i32 @expand_twoval_unop(%struct.TYPE_5__*, i32, i32, i32, i32) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @emit_move_insn(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
