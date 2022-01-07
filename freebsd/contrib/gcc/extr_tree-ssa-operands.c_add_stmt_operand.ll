; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-operands.c_add_stmt_operand.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-operands.c_add_stmt_operand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@SSA_NAME = common dso_local global i64 0, align 8
@opf_is_def = common dso_local global i32 0, align 4
@NULL_TREE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_4__*, i32)* @add_stmt_operand to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_stmt_operand(i32* %0, %struct.TYPE_4__* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load i32*, i32** %4, align 8
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = call i32 @SSA_VAR_P(i32 %13)
  %15 = call i32 @gcc_assert(i32 %14)
  %16 = load i32, i32* %8, align 4
  %17 = call i32 @is_gimple_reg(i32 %16)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %3
  %21 = load i32, i32* %8, align 4
  %22 = call i64 @DECL_P(i32 %21)
  %23 = icmp ne i64 %22, 0
  br label %24

24:                                               ; preds = %20, %3
  %25 = phi i1 [ true, %3 ], [ %23, %20 ]
  %26 = zext i1 %25 to i32
  %27 = call i32 @gcc_assert(i32 %26)
  %28 = load i32, i32* %8, align 4
  %29 = call i64 @TREE_CODE(i32 %28)
  %30 = load i64, i64* @SSA_NAME, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %24
  %33 = load i32, i32* %8, align 4
  %34 = call i32 @SSA_NAME_VAR(i32 %33)
  br label %37

35:                                               ; preds = %24
  %36 = load i32, i32* %8, align 4
  br label %37

37:                                               ; preds = %35, %32
  %38 = phi i32 [ %34, %32 ], [ %36, %35 ]
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* %9, align 4
  %40 = call i32 @var_ann(i32 %39)
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* %9, align 4
  %42 = call i64 @TREE_THIS_VOLATILE(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %37
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %46 = icmp ne %struct.TYPE_4__* %45, null
  br i1 %46, label %47, label %50

47:                                               ; preds = %44
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  store i32 1, i32* %49, align 4
  br label %50

50:                                               ; preds = %47, %44, %37
  %51 = load i32, i32* %7, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %65

53:                                               ; preds = %50
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* @opf_is_def, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %53
  %59 = load i32*, i32** %4, align 8
  %60 = call i32 @append_def(i32* %59)
  br label %64

61:                                               ; preds = %53
  %62 = load i32*, i32** %4, align 8
  %63 = call i32 @append_use(i32* %62)
  br label %64

64:                                               ; preds = %61, %58
  br label %71

65:                                               ; preds = %50
  %66 = load i32, i32* %8, align 4
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %68 = load i32, i32* %6, align 4
  %69 = load i32, i32* @NULL_TREE, align 4
  %70 = call i32 @add_virtual_operand(i32 %66, %struct.TYPE_4__* %67, i32 %68, i32 %69, i32 0, i32 -1, i32 0)
  br label %71

71:                                               ; preds = %65, %64
  ret void
}

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @SSA_VAR_P(i32) #1

declare dso_local i32 @is_gimple_reg(i32) #1

declare dso_local i64 @DECL_P(i32) #1

declare dso_local i64 @TREE_CODE(i32) #1

declare dso_local i32 @SSA_NAME_VAR(i32) #1

declare dso_local i32 @var_ann(i32) #1

declare dso_local i64 @TREE_THIS_VOLATILE(i32) #1

declare dso_local i32 @append_def(i32*) #1

declare dso_local i32 @append_use(i32*) #1

declare dso_local i32 @add_virtual_operand(i32, %struct.TYPE_4__*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
