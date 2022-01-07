; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_dojump.c_do_compare_and_jump.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_dojump.c_do_compare_and_jump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ERROR_MARK = common dso_local global i64 0, align 8
@INTEGER_CST = common dso_local global i64 0, align 8
@BLKmode = common dso_local global i32 0, align 4
@NULL_RTX = common dso_local global i32 0, align 4
@FUNCTION_TYPE = common dso_local global i64 0, align 8
@HAVE_canonicalize_funcptr_for_compare = common dso_local global i64 0, align 8
@POINTER_TYPE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i32, i32)* @do_compare_and_jump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_compare_and_jump(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @TREE_OPERAND(i32 %17, i32 0)
  %19 = call i32 @expand_normal(i32 %18)
  store i32 %19, i32* %11, align 4
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @TREE_OPERAND(i32 %20, i32 0)
  %22 = call i64 @TREE_CODE(i32 %21)
  %23 = load i64, i64* @ERROR_MARK, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %5
  br label %98

26:                                               ; preds = %5
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @TREE_OPERAND(i32 %27, i32 1)
  %29 = call i32 @expand_normal(i32 %28)
  store i32 %29, i32* %12, align 4
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @TREE_OPERAND(i32 %30, i32 1)
  %32 = call i64 @TREE_CODE(i32 %31)
  %33 = load i64, i64* @ERROR_MARK, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %26
  br label %98

36:                                               ; preds = %26
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @TREE_OPERAND(i32 %37, i32 0)
  %39 = call i32 @TREE_TYPE(i32 %38)
  store i32 %39, i32* %13, align 4
  %40 = load i32, i32* %13, align 4
  %41 = call i32 @TYPE_MODE(i32 %40)
  store i32 %41, i32* %14, align 4
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @TREE_OPERAND(i32 %42, i32 0)
  %44 = call i64 @TREE_CODE(i32 %43)
  %45 = load i64, i64* @INTEGER_CST, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %68

47:                                               ; preds = %36
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @TREE_OPERAND(i32 %48, i32 1)
  %50 = call i64 @TREE_CODE(i32 %49)
  %51 = load i64, i64* @INTEGER_CST, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %62, label %53

53:                                               ; preds = %47
  %54 = load i32, i32* %14, align 4
  %55 = call i64 @GET_MODE_BITSIZE(i32 %54)
  %56 = load i32, i32* %6, align 4
  %57 = call i32 @TREE_OPERAND(i32 %56, i32 1)
  %58 = call i32 @TREE_TYPE(i32 %57)
  %59 = call i32 @TYPE_MODE(i32 %58)
  %60 = call i64 @GET_MODE_BITSIZE(i32 %59)
  %61 = icmp sgt i64 %55, %60
  br i1 %61, label %62, label %68

62:                                               ; preds = %53, %47
  %63 = load i32, i32* %6, align 4
  %64 = call i32 @TREE_OPERAND(i32 %63, i32 1)
  %65 = call i32 @TREE_TYPE(i32 %64)
  store i32 %65, i32* %13, align 4
  %66 = load i32, i32* %13, align 4
  %67 = call i32 @TYPE_MODE(i32 %66)
  store i32 %67, i32* %14, align 4
  br label %68

68:                                               ; preds = %62, %53, %36
  %69 = load i32, i32* %13, align 4
  %70 = call i32 @TYPE_UNSIGNED(i32 %69)
  store i32 %70, i32* %15, align 4
  %71 = load i32, i32* %15, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %68
  %74 = load i32, i32* %8, align 4
  br label %77

75:                                               ; preds = %68
  %76 = load i32, i32* %7, align 4
  br label %77

77:                                               ; preds = %75, %73
  %78 = phi i32 [ %74, %73 ], [ %76, %75 ]
  store i32 %78, i32* %16, align 4
  %79 = load i32, i32* %11, align 4
  %80 = load i32, i32* %12, align 4
  %81 = load i32, i32* %16, align 4
  %82 = load i32, i32* %15, align 4
  %83 = load i32, i32* %14, align 4
  %84 = load i32, i32* %14, align 4
  %85 = load i32, i32* @BLKmode, align 4
  %86 = icmp eq i32 %84, %85
  br i1 %86, label %87, label %91

87:                                               ; preds = %77
  %88 = load i32, i32* %6, align 4
  %89 = call i32 @TREE_OPERAND(i32 %88, i32 0)
  %90 = call i32 @expr_size(i32 %89)
  br label %93

91:                                               ; preds = %77
  %92 = load i32, i32* @NULL_RTX, align 4
  br label %93

93:                                               ; preds = %91, %87
  %94 = phi i32 [ %90, %87 ], [ %92, %91 ]
  %95 = load i32, i32* %9, align 4
  %96 = load i32, i32* %10, align 4
  %97 = call i32 @do_compare_rtx_and_jump(i32 %79, i32 %80, i32 %81, i32 %82, i32 %83, i32 %94, i32 %95, i32 %96)
  br label %98

98:                                               ; preds = %93, %35, %25
  ret void
}

declare dso_local i32 @expand_normal(i32) #1

declare dso_local i32 @TREE_OPERAND(i32, i32) #1

declare dso_local i64 @TREE_CODE(i32) #1

declare dso_local i32 @TREE_TYPE(i32) #1

declare dso_local i32 @TYPE_MODE(i32) #1

declare dso_local i64 @GET_MODE_BITSIZE(i32) #1

declare dso_local i32 @TYPE_UNSIGNED(i32) #1

declare dso_local i32 @do_compare_rtx_and_jump(i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @expr_size(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
