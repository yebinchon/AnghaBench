; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gimplify.c_mostly_copy_tree_r.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gimplify.c_mostly_copy_tree_r.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@tcc_type = common dso_local global i64 0, align 8
@tcc_declaration = common dso_local global i64 0, align 8
@tcc_constant = common dso_local global i64 0, align 8
@SAVE_EXPR = common dso_local global i32 0, align 4
@TARGET_EXPR = common dso_local global i32 0, align 4
@BLOCK = common dso_local global i32 0, align 4
@BIND_EXPR = common dso_local global i32 0, align 4
@NULL_TREE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i8*)* @mostly_copy_tree_r to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mostly_copy_tree_r(i32* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @TREE_CODE(i32 %9)
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = call i64 @TREE_CODE_CLASS(i32 %11)
  %13 = load i64, i64* @tcc_type, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %37, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* %7, align 4
  %17 = call i64 @TREE_CODE_CLASS(i32 %16)
  %18 = load i64, i64* @tcc_declaration, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %37, label %20

20:                                               ; preds = %15
  %21 = load i32, i32* %7, align 4
  %22 = call i64 @TREE_CODE_CLASS(i32 %21)
  %23 = load i64, i64* @tcc_constant, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %37, label %25

25:                                               ; preds = %20
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @SAVE_EXPR, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %37, label %29

29:                                               ; preds = %25
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @TARGET_EXPR, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %37, label %33

33:                                               ; preds = %29
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @BLOCK, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %33, %29, %25, %20, %15, %3
  %38 = load i32*, i32** %5, align 8
  store i32 0, i32* %38, align 4
  br label %49

39:                                               ; preds = %33
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* @BIND_EXPR, align 4
  %42 = icmp ne i32 %40, %41
  %43 = zext i1 %42 to i32
  %44 = call i32 @gcc_assert(i32 %43)
  %45 = load i32*, i32** %4, align 8
  %46 = load i32*, i32** %5, align 8
  %47 = load i8*, i8** %6, align 8
  %48 = call i32 @copy_tree_r(i32* %45, i32* %46, i8* %47)
  br label %49

49:                                               ; preds = %39, %37
  %50 = load i32, i32* @NULL_TREE, align 4
  ret i32 %50
}

declare dso_local i32 @TREE_CODE(i32) #1

declare dso_local i64 @TREE_CODE_CLASS(i32) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @copy_tree_r(i32*, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
