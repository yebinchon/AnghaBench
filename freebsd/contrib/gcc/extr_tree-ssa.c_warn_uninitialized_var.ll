; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa.c_warn_uninitialized_var.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa.c_warn_uninitialized_var.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [45 x i8] c"%H%qD is used uninitialized in this function\00", align 1
@NULL_TREE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i8*)* @warn_uninitialized_var to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @warn_uninitialized_var(i32* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = call i32 @TREE_CODE(i32 %10)
  switch i32 %11, label %25 [
    i32 128, label %12
    i32 129, label %17
    i32 130, label %17
  ]

12:                                               ; preds = %3
  %13 = load i32, i32* %7, align 4
  %14 = load i8*, i8** %6, align 8
  %15 = call i32 @warn_uninit(i32 %13, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i8* %14)
  %16 = load i32*, i32** %5, align 8
  store i32 0, i32* %16, align 4
  br label %32

17:                                               ; preds = %3, %3
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @TREE_OPERAND(i32 %18, i32 0)
  %20 = call i32 @TREE_CODE(i32 %19)
  %21 = icmp eq i32 %20, 128
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = load i32*, i32** %5, align 8
  store i32 0, i32* %23, align 4
  br label %24

24:                                               ; preds = %22, %17
  br label %32

25:                                               ; preds = %3
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @IS_TYPE_OR_DECL_P(i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %25
  %30 = load i32*, i32** %5, align 8
  store i32 0, i32* %30, align 4
  br label %31

31:                                               ; preds = %29, %25
  br label %32

32:                                               ; preds = %31, %24, %12
  %33 = load i32, i32* @NULL_TREE, align 4
  ret i32 %33
}

declare dso_local i32 @TREE_CODE(i32) #1

declare dso_local i32 @warn_uninit(i32, i8*, i8*) #1

declare dso_local i32 @TREE_OPERAND(i32, i32) #1

declare dso_local i32 @IS_TYPE_OR_DECL_P(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
