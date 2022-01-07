; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree.c_tree_node_structure.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree.c_tree_node_structure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TS_FIELD_DECL = common dso_local global i32 0, align 4
@TS_PARM_DECL = common dso_local global i32 0, align 4
@TS_VAR_DECL = common dso_local global i32 0, align 4
@TS_LABEL_DECL = common dso_local global i32 0, align 4
@TS_RESULT_DECL = common dso_local global i32 0, align 4
@TS_CONST_DECL = common dso_local global i32 0, align 4
@TS_TYPE_DECL = common dso_local global i32 0, align 4
@TS_FUNCTION_DECL = common dso_local global i32 0, align 4
@TS_MEMORY_TAG = common dso_local global i32 0, align 4
@TS_DECL_NON_COMMON = common dso_local global i32 0, align 4
@TS_TYPE = common dso_local global i32 0, align 4
@TS_EXP = common dso_local global i32 0, align 4
@TS_INT_CST = common dso_local global i32 0, align 4
@TS_REAL_CST = common dso_local global i32 0, align 4
@TS_COMPLEX = common dso_local global i32 0, align 4
@TS_VECTOR = common dso_local global i32 0, align 4
@TS_STRING = common dso_local global i32 0, align 4
@TS_COMMON = common dso_local global i32 0, align 4
@TS_IDENTIFIER = common dso_local global i32 0, align 4
@TS_LIST = common dso_local global i32 0, align 4
@TS_VEC = common dso_local global i32 0, align 4
@TS_PHI_NODE = common dso_local global i32 0, align 4
@TS_SSA_NAME = common dso_local global i32 0, align 4
@TS_STATEMENT_LIST = common dso_local global i32 0, align 4
@TS_BLOCK = common dso_local global i32 0, align 4
@TS_CONSTRUCTOR = common dso_local global i32 0, align 4
@TS_BINFO = common dso_local global i32 0, align 4
@TS_VALUE_HANDLE = common dso_local global i32 0, align 4
@TS_OMP_CLAUSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tree_node_structure(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call i32 @TREE_CODE(i32 %5)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = call i32 @TREE_CODE_CLASS(i32 %7)
  switch i32 %8, label %35 [
    i32 133, label %9
    i32 129, label %31
    i32 131, label %33
    i32 134, label %33
    i32 128, label %33
    i32 135, label %33
    i32 132, label %33
    i32 130, label %33
  ]

9:                                                ; preds = %1
  %10 = load i32, i32* %4, align 4
  switch i32 %10, label %29 [
    i32 159, label %11
    i32 152, label %13
    i32 137, label %15
    i32 155, label %17
    i32 148, label %19
    i32 161, label %21
    i32 139, label %23
    i32 158, label %25
    i32 143, label %27
    i32 154, label %27
    i32 144, label %27
  ]

11:                                               ; preds = %9
  %12 = load i32, i32* @TS_FIELD_DECL, align 4
  store i32 %12, i32* %2, align 4
  br label %76

13:                                               ; preds = %9
  %14 = load i32, i32* @TS_PARM_DECL, align 4
  store i32 %14, i32* %2, align 4
  br label %76

15:                                               ; preds = %9
  %16 = load i32, i32* @TS_VAR_DECL, align 4
  store i32 %16, i32* %2, align 4
  br label %76

17:                                               ; preds = %9
  %18 = load i32, i32* @TS_LABEL_DECL, align 4
  store i32 %18, i32* %2, align 4
  br label %76

19:                                               ; preds = %9
  %20 = load i32, i32* @TS_RESULT_DECL, align 4
  store i32 %20, i32* %2, align 4
  br label %76

21:                                               ; preds = %9
  %22 = load i32, i32* @TS_CONST_DECL, align 4
  store i32 %22, i32* %2, align 4
  br label %76

23:                                               ; preds = %9
  %24 = load i32, i32* @TS_TYPE_DECL, align 4
  store i32 %24, i32* %2, align 4
  br label %76

25:                                               ; preds = %9
  %26 = load i32, i32* @TS_FUNCTION_DECL, align 4
  store i32 %26, i32* %2, align 4
  br label %76

27:                                               ; preds = %9, %9, %9
  %28 = load i32, i32* @TS_MEMORY_TAG, align 4
  store i32 %28, i32* %2, align 4
  br label %76

29:                                               ; preds = %9
  %30 = load i32, i32* @TS_DECL_NON_COMMON, align 4
  store i32 %30, i32* %2, align 4
  br label %76

31:                                               ; preds = %1
  %32 = load i32, i32* @TS_TYPE, align 4
  store i32 %32, i32* %2, align 4
  br label %76

33:                                               ; preds = %1, %1, %1, %1, %1, %1
  %34 = load i32, i32* @TS_EXP, align 4
  store i32 %34, i32* %2, align 4
  br label %76

35:                                               ; preds = %1
  br label %36

36:                                               ; preds = %35
  %37 = load i32, i32* %4, align 4
  switch i32 %37, label %74 [
    i32 156, label %38
    i32 149, label %40
    i32 163, label %42
    i32 136, label %44
    i32 145, label %46
    i32 160, label %48
    i32 157, label %50
    i32 141, label %52
    i32 140, label %54
    i32 151, label %56
    i32 147, label %58
    i32 150, label %60
    i32 146, label %62
    i32 164, label %64
    i32 162, label %66
    i32 142, label %68
    i32 138, label %70
    i32 153, label %72
  ]

38:                                               ; preds = %36
  %39 = load i32, i32* @TS_INT_CST, align 4
  store i32 %39, i32* %2, align 4
  br label %76

40:                                               ; preds = %36
  %41 = load i32, i32* @TS_REAL_CST, align 4
  store i32 %41, i32* %2, align 4
  br label %76

42:                                               ; preds = %36
  %43 = load i32, i32* @TS_COMPLEX, align 4
  store i32 %43, i32* %2, align 4
  br label %76

44:                                               ; preds = %36
  %45 = load i32, i32* @TS_VECTOR, align 4
  store i32 %45, i32* %2, align 4
  br label %76

46:                                               ; preds = %36
  %47 = load i32, i32* @TS_STRING, align 4
  store i32 %47, i32* %2, align 4
  br label %76

48:                                               ; preds = %36
  %49 = load i32, i32* @TS_COMMON, align 4
  store i32 %49, i32* %2, align 4
  br label %76

50:                                               ; preds = %36
  %51 = load i32, i32* @TS_IDENTIFIER, align 4
  store i32 %51, i32* %2, align 4
  br label %76

52:                                               ; preds = %36
  %53 = load i32, i32* @TS_LIST, align 4
  store i32 %53, i32* %2, align 4
  br label %76

54:                                               ; preds = %36
  %55 = load i32, i32* @TS_VEC, align 4
  store i32 %55, i32* %2, align 4
  br label %76

56:                                               ; preds = %36
  %57 = load i32, i32* @TS_PHI_NODE, align 4
  store i32 %57, i32* %2, align 4
  br label %76

58:                                               ; preds = %36
  %59 = load i32, i32* @TS_SSA_NAME, align 4
  store i32 %59, i32* %2, align 4
  br label %76

60:                                               ; preds = %36
  %61 = load i32, i32* @TS_COMMON, align 4
  store i32 %61, i32* %2, align 4
  br label %76

62:                                               ; preds = %36
  %63 = load i32, i32* @TS_STATEMENT_LIST, align 4
  store i32 %63, i32* %2, align 4
  br label %76

64:                                               ; preds = %36
  %65 = load i32, i32* @TS_BLOCK, align 4
  store i32 %65, i32* %2, align 4
  br label %76

66:                                               ; preds = %36
  %67 = load i32, i32* @TS_CONSTRUCTOR, align 4
  store i32 %67, i32* %2, align 4
  br label %76

68:                                               ; preds = %36
  %69 = load i32, i32* @TS_BINFO, align 4
  store i32 %69, i32* %2, align 4
  br label %76

70:                                               ; preds = %36
  %71 = load i32, i32* @TS_VALUE_HANDLE, align 4
  store i32 %71, i32* %2, align 4
  br label %76

72:                                               ; preds = %36
  %73 = load i32, i32* @TS_OMP_CLAUSE, align 4
  store i32 %73, i32* %2, align 4
  br label %76

74:                                               ; preds = %36
  %75 = call i32 (...) @gcc_unreachable()
  br label %76

76:                                               ; preds = %11, %13, %15, %17, %19, %21, %23, %25, %27, %29, %31, %33, %38, %40, %42, %44, %46, %48, %50, %52, %54, %56, %58, %60, %62, %64, %66, %68, %70, %72, %74
  %77 = load i32, i32* %2, align 4
  ret i32 %77
}

declare dso_local i32 @TREE_CODE(i32) #1

declare dso_local i32 @TREE_CODE_CLASS(i32) #1

declare dso_local i32 @gcc_unreachable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
