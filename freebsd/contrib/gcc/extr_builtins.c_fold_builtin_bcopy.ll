; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_builtins.c_fold_builtin_bcopy.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_builtins.c_fold_builtin_bcopy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@POINTER_TYPE = common dso_local global i32 0, align 4
@INTEGER_TYPE = common dso_local global i32 0, align 4
@VOID_TYPE = common dso_local global i32 0, align 4
@NULL_TREE = common dso_local global i32 0, align 4
@sizetype = common dso_local global i32 0, align 4
@void_type_node = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @fold_builtin_bcopy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fold_builtin_bcopy(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @POINTER_TYPE, align 4
  %12 = load i32, i32* @POINTER_TYPE, align 4
  %13 = load i32, i32* @INTEGER_TYPE, align 4
  %14 = load i32, i32* @VOID_TYPE, align 4
  %15 = call i32 @validate_arglist(i32 %10, i32 %11, i32 %12, i32 %13, i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %48

18:                                               ; preds = %2
  %19 = load i32, i32* %5, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %18
  store i32 0, i32* %3, align 4
  br label %48

22:                                               ; preds = %18
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @TREE_VALUE(i32 %23)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @TREE_CHAIN(i32 %25)
  %27 = call i32 @TREE_VALUE(i32 %26)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @TREE_CHAIN(i32 %28)
  %30 = call i32 @TREE_CHAIN(i32 %29)
  %31 = call i32 @TREE_VALUE(i32 %30)
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* @NULL_TREE, align 4
  %33 = load i32, i32* @sizetype, align 4
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @fold_convert(i32 %33, i32 %34)
  %36 = call i32 @build_tree_list(i32 %32, i32 %35)
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* @NULL_TREE, align 4
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* %9, align 4
  %40 = call i32 @tree_cons(i32 %37, i32 %38, i32 %39)
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* @NULL_TREE, align 4
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* %9, align 4
  %44 = call i32 @tree_cons(i32 %41, i32 %42, i32 %43)
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* @void_type_node, align 4
  %47 = call i32 @fold_builtin_memory_op(i32 %45, i32 %46, i32 1, i32 3)
  store i32 %47, i32* %3, align 4
  br label %48

48:                                               ; preds = %22, %21, %17
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local i32 @validate_arglist(i32, i32, i32, i32, i32) #1

declare dso_local i32 @TREE_VALUE(i32) #1

declare dso_local i32 @TREE_CHAIN(i32) #1

declare dso_local i32 @build_tree_list(i32, i32) #1

declare dso_local i32 @fold_convert(i32, i32) #1

declare dso_local i32 @tree_cons(i32, i32, i32) #1

declare dso_local i32 @fold_builtin_memory_op(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
