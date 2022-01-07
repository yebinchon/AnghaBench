; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop-niter.c_chain_of_csts_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop-niter.c_chain_of_csts_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.loop = type { i64 }

@NULL_TREE = common dso_local global i64 0, align 8
@PHI_NODE = common dso_local global i64 0, align 8
@MODIFY_EXPR = common dso_local global i64 0, align 8
@SSA_OP_ALL_VIRTUALS = common dso_local global i32 0, align 4
@SSA_OP_DEF = common dso_local global i32 0, align 4
@NULL_DEF_OPERAND_P = common dso_local global i64 0, align 8
@SSA_OP_USE = common dso_local global i32 0, align 4
@NULL_USE_OPERAND_P = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.loop*, i64)* @chain_of_csts_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @chain_of_csts_start(%struct.loop* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.loop*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.loop* %0, %struct.loop** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load i64, i64* %5, align 8
  %10 = call i64 @SSA_NAME_DEF_STMT(i64 %9)
  store i64 %10, i64* %6, align 8
  %11 = load i64, i64* %6, align 8
  %12 = call i64 @bb_for_stmt(i64 %11)
  store i64 %12, i64* %8, align 8
  %13 = load i64, i64* %8, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %2
  %16 = load %struct.loop*, %struct.loop** %4, align 8
  %17 = load i64, i64* %8, align 8
  %18 = call i32 @flow_bb_inside_loop_p(%struct.loop* %16, i64 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %15, %2
  %21 = load i64, i64* @NULL_TREE, align 8
  store i64 %21, i64* %3, align 8
  br label %72

22:                                               ; preds = %15
  %23 = load i64, i64* %6, align 8
  %24 = call i64 @TREE_CODE(i64 %23)
  %25 = load i64, i64* @PHI_NODE, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %37

27:                                               ; preds = %22
  %28 = load i64, i64* %8, align 8
  %29 = load %struct.loop*, %struct.loop** %4, align 8
  %30 = getelementptr inbounds %struct.loop, %struct.loop* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp eq i64 %28, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %27
  %34 = load i64, i64* %6, align 8
  store i64 %34, i64* %3, align 8
  br label %72

35:                                               ; preds = %27
  %36 = load i64, i64* @NULL_TREE, align 8
  store i64 %36, i64* %3, align 8
  br label %72

37:                                               ; preds = %22
  %38 = load i64, i64* %6, align 8
  %39 = call i64 @TREE_CODE(i64 %38)
  %40 = load i64, i64* @MODIFY_EXPR, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %37
  %43 = load i64, i64* @NULL_TREE, align 8
  store i64 %43, i64* %3, align 8
  br label %72

44:                                               ; preds = %37
  %45 = load i64, i64* %6, align 8
  %46 = load i32, i32* @SSA_OP_ALL_VIRTUALS, align 4
  %47 = call i32 @ZERO_SSA_OPERANDS(i64 %45, i32 %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %51, label %49

49:                                               ; preds = %44
  %50 = load i64, i64* @NULL_TREE, align 8
  store i64 %50, i64* %3, align 8
  br label %72

51:                                               ; preds = %44
  %52 = load i64, i64* %6, align 8
  %53 = load i32, i32* @SSA_OP_DEF, align 4
  %54 = call i64 @SINGLE_SSA_DEF_OPERAND(i64 %52, i32 %53)
  %55 = load i64, i64* @NULL_DEF_OPERAND_P, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %51
  %58 = load i64, i64* @NULL_TREE, align 8
  store i64 %58, i64* %3, align 8
  br label %72

59:                                               ; preds = %51
  %60 = load i64, i64* %6, align 8
  %61 = load i32, i32* @SSA_OP_USE, align 4
  %62 = call i64 @SINGLE_SSA_TREE_OPERAND(i64 %60, i32 %61)
  store i64 %62, i64* %7, align 8
  %63 = load i64, i64* %7, align 8
  %64 = load i64, i64* @NULL_USE_OPERAND_P, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %68

66:                                               ; preds = %59
  %67 = load i64, i64* @NULL_TREE, align 8
  store i64 %67, i64* %3, align 8
  br label %72

68:                                               ; preds = %59
  %69 = load %struct.loop*, %struct.loop** %4, align 8
  %70 = load i64, i64* %7, align 8
  %71 = call i64 @chain_of_csts_start(%struct.loop* %69, i64 %70)
  store i64 %71, i64* %3, align 8
  br label %72

72:                                               ; preds = %68, %66, %57, %49, %42, %35, %33, %20
  %73 = load i64, i64* %3, align 8
  ret i64 %73
}

declare dso_local i64 @SSA_NAME_DEF_STMT(i64) #1

declare dso_local i64 @bb_for_stmt(i64) #1

declare dso_local i32 @flow_bb_inside_loop_p(%struct.loop*, i64) #1

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i32 @ZERO_SSA_OPERANDS(i64, i32) #1

declare dso_local i64 @SINGLE_SSA_DEF_OPERAND(i64, i32) #1

declare dso_local i64 @SINGLE_SSA_TREE_OPERAND(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
