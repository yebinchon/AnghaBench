; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/ia64/extr_ia64.c_ia64_gimplify_va_arg.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/ia64/extr_ia64.c_ia64_gimplify_va_arg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@REAL_TYPE = common dso_local global i64 0, align 8
@INTEGER_TYPE = common dso_local global i64 0, align 8
@BITS_PER_UNIT = common dso_local global i32 0, align 4
@PLUS_EXPR = common dso_local global i32 0, align 4
@NULL_TREE = common dso_local global i32 0, align 4
@UNITS_PER_WORD = common dso_local global i32 0, align 4
@BIT_AND_EXPR = common dso_local global i32 0, align 4
@MODIFY_EXPR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32*, i32*)* @ia64_gimplify_va_arg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ia64_gimplify_va_arg(i32 %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %13 = load i32, i32* %7, align 4
  %14 = call i32 @TYPE_MODE(i32 %13)
  %15 = load i32, i32* %7, align 4
  %16 = call i64 @pass_by_reference(i32* null, i32 %14, i32 %15, i32 0)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %28

18:                                               ; preds = %4
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @build_pointer_type(i32 %19)
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* %10, align 4
  %23 = load i32*, i32** %8, align 8
  %24 = load i32*, i32** %9, align 8
  %25 = call i32 @std_gimplify_va_arg_expr(i32 %21, i32 %22, i32* %23, i32* %24)
  store i32 %25, i32* %11, align 4
  %26 = load i32, i32* %11, align 4
  %27 = call i32 @build_va_arg_indirect_ref(i32 %26)
  store i32 %27, i32* %5, align 4
  br label %83

28:                                               ; preds = %4
  %29 = load i32, i32* %7, align 4
  %30 = call i64 @TREE_CODE(i32 %29)
  %31 = load i64, i64* @REAL_TYPE, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %38, label %33

33:                                               ; preds = %28
  %34 = load i32, i32* %7, align 4
  %35 = call i64 @TREE_CODE(i32 %34)
  %36 = load i64, i64* @INTEGER_TYPE, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %33, %28
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @int_size_in_bytes(i32 %39)
  %41 = icmp sgt i32 %40, 8
  br i1 %41, label %48, label %77

42:                                               ; preds = %33
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @TYPE_ALIGN(i32 %43)
  %45 = load i32, i32* @BITS_PER_UNIT, align 4
  %46 = mul nsw i32 8, %45
  %47 = icmp sgt i32 %44, %46
  br i1 %47, label %48, label %77

48:                                               ; preds = %42, %38
  %49 = load i32, i32* @PLUS_EXPR, align 4
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @TREE_TYPE(i32 %50)
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* @NULL_TREE, align 4
  %54 = load i32, i32* @UNITS_PER_WORD, align 4
  %55 = mul nsw i32 2, %54
  %56 = sub nsw i32 %55, 1
  %57 = call i32 @build_int_cst(i32 %53, i32 %56)
  %58 = call i32 @build2(i32 %49, i32 %51, i32 %52, i32 %57)
  store i32 %58, i32* %12, align 4
  %59 = load i32, i32* @BIT_AND_EXPR, align 4
  %60 = load i32, i32* %12, align 4
  %61 = call i32 @TREE_TYPE(i32 %60)
  %62 = load i32, i32* %12, align 4
  %63 = load i32, i32* @NULL_TREE, align 4
  %64 = load i32, i32* @UNITS_PER_WORD, align 4
  %65 = mul nsw i32 -2, %64
  %66 = call i32 @build_int_cst(i32 %63, i32 %65)
  %67 = call i32 @build2(i32 %59, i32 %61, i32 %62, i32 %66)
  store i32 %67, i32* %12, align 4
  %68 = load i32, i32* @MODIFY_EXPR, align 4
  %69 = load i32, i32* %6, align 4
  %70 = call i32 @TREE_TYPE(i32 %69)
  %71 = load i32, i32* %6, align 4
  %72 = load i32, i32* %12, align 4
  %73 = call i32 @build2(i32 %68, i32 %70, i32 %71, i32 %72)
  store i32 %73, i32* %12, align 4
  %74 = load i32, i32* %12, align 4
  %75 = load i32*, i32** %8, align 8
  %76 = call i32 @gimplify_and_add(i32 %74, i32* %75)
  br label %77

77:                                               ; preds = %48, %42, %38
  %78 = load i32, i32* %6, align 4
  %79 = load i32, i32* %7, align 4
  %80 = load i32*, i32** %8, align 8
  %81 = load i32*, i32** %9, align 8
  %82 = call i32 @std_gimplify_va_arg_expr(i32 %78, i32 %79, i32* %80, i32* %81)
  store i32 %82, i32* %5, align 4
  br label %83

83:                                               ; preds = %77, %18
  %84 = load i32, i32* %5, align 4
  ret i32 %84
}

declare dso_local i64 @pass_by_reference(i32*, i32, i32, i32) #1

declare dso_local i32 @TYPE_MODE(i32) #1

declare dso_local i32 @build_pointer_type(i32) #1

declare dso_local i32 @std_gimplify_va_arg_expr(i32, i32, i32*, i32*) #1

declare dso_local i32 @build_va_arg_indirect_ref(i32) #1

declare dso_local i64 @TREE_CODE(i32) #1

declare dso_local i32 @int_size_in_bytes(i32) #1

declare dso_local i32 @TYPE_ALIGN(i32) #1

declare dso_local i32 @build2(i32, i32, i32, i32) #1

declare dso_local i32 @TREE_TYPE(i32) #1

declare dso_local i32 @build_int_cst(i32, i32) #1

declare dso_local i32 @gimplify_and_add(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
