; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-copy.c_stmt_may_generate_copy.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-copy.c_stmt_may_generate_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }

@PHI_NODE = common dso_local global i64 0, align 8
@MODIFY_EXPR = common dso_local global i64 0, align 8
@do_store_copy_prop = common dso_local global i64 0, align 8
@SSA_OP_ALL_VIRTUALS = common dso_local global i32 0, align 4
@SSA_NAME = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @stmt_may_generate_copy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stmt_may_generate_copy(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_3__*, align 8
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call i64 @TREE_CODE(i32 %7)
  %9 = load i64, i64* @PHI_NODE, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %18

11:                                               ; preds = %1
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @PHI_RESULT(i32 %12)
  %14 = call i32 @SSA_NAME_OCCURS_IN_ABNORMAL_PHI(i32 %13)
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  store i32 %17, i32* %2, align 4
  br label %68

18:                                               ; preds = %1
  %19 = load i32, i32* %3, align 4
  %20 = call i64 @TREE_CODE(i32 %19)
  %21 = load i64, i64* @MODIFY_EXPR, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  store i32 0, i32* %2, align 4
  br label %68

24:                                               ; preds = %18
  %25 = load i32, i32* %3, align 4
  %26 = call i32 @TREE_OPERAND(i32 %25, i32 0)
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* %3, align 4
  %28 = call i32 @TREE_OPERAND(i32 %27, i32 1)
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %3, align 4
  %30 = call %struct.TYPE_3__* @stmt_ann(i32 %29)
  store %struct.TYPE_3__* %30, %struct.TYPE_3__** %6, align 8
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %24
  store i32 0, i32* %2, align 4
  br label %68

36:                                               ; preds = %24
  %37 = load i64, i64* @do_store_copy_prop, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %45, label %39

39:                                               ; preds = %36
  %40 = load i32, i32* %3, align 4
  %41 = load i32, i32* @SSA_OP_ALL_VIRTUALS, align 4
  %42 = call i32 @ZERO_SSA_OPERANDS(i32 %40, i32 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %39
  store i32 0, i32* %2, align 4
  br label %68

45:                                               ; preds = %39, %36
  %46 = load i64, i64* @do_store_copy_prop, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %45
  %49 = load i32, i32* %4, align 4
  %50 = call i64 @TREE_CODE(i32 %49)
  %51 = load i64, i64* @SSA_NAME, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %65, label %53

53:                                               ; preds = %48, %45
  %54 = load i32, i32* %5, align 4
  %55 = call i64 @TREE_CODE(i32 %54)
  %56 = load i64, i64* @SSA_NAME, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %63

58:                                               ; preds = %53
  %59 = load i32, i32* %5, align 4
  %60 = call i32 @SSA_NAME_OCCURS_IN_ABNORMAL_PHI(i32 %59)
  %61 = icmp ne i32 %60, 0
  %62 = xor i1 %61, true
  br label %63

63:                                               ; preds = %58, %53
  %64 = phi i1 [ false, %53 ], [ %62, %58 ]
  br label %65

65:                                               ; preds = %63, %48
  %66 = phi i1 [ true, %48 ], [ %64, %63 ]
  %67 = zext i1 %66 to i32
  store i32 %67, i32* %2, align 4
  br label %68

68:                                               ; preds = %65, %44, %35, %23, %11
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

declare dso_local i64 @TREE_CODE(i32) #1

declare dso_local i32 @SSA_NAME_OCCURS_IN_ABNORMAL_PHI(i32) #1

declare dso_local i32 @PHI_RESULT(i32) #1

declare dso_local i32 @TREE_OPERAND(i32, i32) #1

declare dso_local %struct.TYPE_3__* @stmt_ann(i32) #1

declare dso_local i32 @ZERO_SSA_OPERANDS(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
