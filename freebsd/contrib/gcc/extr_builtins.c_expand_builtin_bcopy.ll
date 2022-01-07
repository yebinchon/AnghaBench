; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_builtins.c_expand_builtin_bcopy.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_builtins.c_expand_builtin_bcopy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@POINTER_TYPE = common dso_local global i32 0, align 4
@INTEGER_TYPE = common dso_local global i32 0, align 4
@VOID_TYPE = common dso_local global i32 0, align 4
@NULL_RTX = common dso_local global i32 0, align 4
@NULL_TREE = common dso_local global i32 0, align 4
@sizetype = common dso_local global i32 0, align 4
@const0_rtx = common dso_local global i32 0, align 4
@VOIDmode = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @expand_builtin_bcopy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @expand_builtin_bcopy(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = call i32 @TREE_OPERAND(i32 %10, i32 1)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @TREE_TYPE(i32 %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @POINTER_TYPE, align 4
  %16 = load i32, i32* @POINTER_TYPE, align 4
  %17 = load i32, i32* @INTEGER_TYPE, align 4
  %18 = load i32, i32* @VOID_TYPE, align 4
  %19 = call i32 @validate_arglist(i32 %14, i32 %15, i32 %16, i32 %17, i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %1
  %22 = load i32, i32* @NULL_RTX, align 4
  store i32 %22, i32* %2, align 4
  br label %52

23:                                               ; preds = %1
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @TREE_VALUE(i32 %24)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @TREE_CHAIN(i32 %26)
  %28 = call i32 @TREE_VALUE(i32 %27)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @TREE_CHAIN(i32 %29)
  %31 = call i32 @TREE_CHAIN(i32 %30)
  %32 = call i32 @TREE_VALUE(i32 %31)
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* @NULL_TREE, align 4
  %34 = load i32, i32* @sizetype, align 4
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @fold_convert(i32 %34, i32 %35)
  %37 = call i32 @build_tree_list(i32 %33, i32 %36)
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* @NULL_TREE, align 4
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* %9, align 4
  %41 = call i32 @tree_cons(i32 %38, i32 %39, i32 %40)
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* @NULL_TREE, align 4
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* %9, align 4
  %45 = call i32 @tree_cons(i32 %42, i32 %43, i32 %44)
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* @const0_rtx, align 4
  %49 = load i32, i32* @VOIDmode, align 4
  %50 = load i32, i32* %3, align 4
  %51 = call i32 @expand_builtin_memmove(i32 %46, i32 %47, i32 %48, i32 %49, i32 %50)
  store i32 %51, i32* %2, align 4
  br label %52

52:                                               ; preds = %23, %21
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local i32 @TREE_OPERAND(i32, i32) #1

declare dso_local i32 @TREE_TYPE(i32) #1

declare dso_local i32 @validate_arglist(i32, i32, i32, i32, i32) #1

declare dso_local i32 @TREE_VALUE(i32) #1

declare dso_local i32 @TREE_CHAIN(i32) #1

declare dso_local i32 @build_tree_list(i32, i32) #1

declare dso_local i32 @fold_convert(i32, i32) #1

declare dso_local i32 @tree_cons(i32, i32, i32) #1

declare dso_local i32 @expand_builtin_memmove(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
