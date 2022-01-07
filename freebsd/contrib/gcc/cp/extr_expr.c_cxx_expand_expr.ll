; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_expr.c_cxx_expand_expr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_expr.c_cxx_expand_expr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Pmode = common dso_local global i32 0, align 4
@EXPAND_SUM = common dso_local global i32 0, align 4
@EXPAND_NORMAL = common dso_local global i32 0, align 4
@const0_rtx = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cxx_expand_expr(i32 %0, i32 %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %15 = load i32, i32* %7, align 4
  %16 = call i32 @TREE_TYPE(i32 %15)
  store i32 %16, i32* %12, align 4
  %17 = load i32, i32* %12, align 4
  %18 = call i32 @TYPE_MODE(i32 %17)
  store i32 %18, i32* %13, align 4
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @TREE_CODE(i32 %19)
  store i32 %20, i32* %14, align 4
  %21 = load i32, i32* %13, align 4
  %22 = load i32, i32* @Pmode, align 4
  %23 = icmp ne i32 %21, %22
  br i1 %23, label %24, label %30

24:                                               ; preds = %5
  %25 = load i32, i32* %10, align 4
  %26 = load i32, i32* @EXPAND_SUM, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = load i32, i32* @EXPAND_NORMAL, align 4
  store i32 %29, i32* %10, align 4
  br label %30

30:                                               ; preds = %28, %24, %5
  %31 = load i32, i32* %14, align 4
  switch i32 %31, label %50 [
    i32 128, label %32
    i32 129, label %39
    i32 130, label %41
    i32 131, label %43
  ]

32:                                               ; preds = %30
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @cplus_expand_constant(i32 %33)
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* %10, align 4
  %38 = call i32 @expand_expr(i32 %34, i32 %35, i32 %36, i32 %37)
  store i32 %38, i32* %6, align 4
  br label %57

39:                                               ; preds = %30
  %40 = call i32 (...) @gcc_unreachable()
  br label %41

41:                                               ; preds = %30, %39
  %42 = load i32, i32* @const0_rtx, align 4
  store i32 %42, i32* %6, align 4
  br label %57

43:                                               ; preds = %30
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @BASELINK_FUNCTIONS(i32 %44)
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* %10, align 4
  %49 = call i32 @expand_expr(i32 %45, i32 %46, i32 %47, i32 %48)
  store i32 %49, i32* %6, align 4
  br label %57

50:                                               ; preds = %30
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* %10, align 4
  %55 = load i32*, i32** %11, align 8
  %56 = call i32 @c_expand_expr(i32 %51, i32 %52, i32 %53, i32 %54, i32* %55)
  store i32 %56, i32* %6, align 4
  br label %57

57:                                               ; preds = %50, %43, %41, %32
  %58 = load i32, i32* %6, align 4
  ret i32 %58
}

declare dso_local i32 @TREE_TYPE(i32) #1

declare dso_local i32 @TYPE_MODE(i32) #1

declare dso_local i32 @TREE_CODE(i32) #1

declare dso_local i32 @expand_expr(i32, i32, i32, i32) #1

declare dso_local i32 @cplus_expand_constant(i32) #1

declare dso_local i32 @gcc_unreachable(...) #1

declare dso_local i32 @BASELINK_FUNCTIONS(i32) #1

declare dso_local i32 @c_expand_expr(i32, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
