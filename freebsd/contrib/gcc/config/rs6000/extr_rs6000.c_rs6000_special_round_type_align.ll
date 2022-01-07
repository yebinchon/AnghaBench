; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/rs6000/extr_rs6000.c_rs6000_special_round_type_align.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/rs6000/extr_rs6000.c_rs6000_special_round_type_align.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FIELD_DECL = common dso_local global i64 0, align 8
@ARRAY_TYPE = common dso_local global i64 0, align 8
@error_mark_node = common dso_local global i32* null, align 8
@DFmode = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rs6000_special_round_type_align(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* %6, align 4
  %11 = call i32 @MAX(i32 %9, i32 %10)
  store i32 %11, i32* %7, align 4
  %12 = load i32*, i32** %4, align 8
  %13 = call i32* @TYPE_FIELDS(i32* %12)
  store i32* %13, i32** %8, align 8
  br label %14

14:                                               ; preds = %24, %3
  %15 = load i32*, i32** %8, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %22

17:                                               ; preds = %14
  %18 = load i32*, i32** %8, align 8
  %19 = call i64 @TREE_CODE(i32* %18)
  %20 = load i64, i64* @FIELD_DECL, align 8
  %21 = icmp ne i64 %19, %20
  br label %22

22:                                               ; preds = %17, %14
  %23 = phi i1 [ false, %14 ], [ %21, %17 ]
  br i1 %23, label %24, label %27

24:                                               ; preds = %22
  %25 = load i32*, i32** %8, align 8
  %26 = call i32* @TREE_CHAIN(i32* %25)
  store i32* %26, i32** %8, align 8
  br label %14

27:                                               ; preds = %22
  %28 = load i32*, i32** %8, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %58

30:                                               ; preds = %27
  %31 = load i32*, i32** %8, align 8
  %32 = load i32*, i32** %4, align 8
  %33 = icmp ne i32* %31, %32
  br i1 %33, label %34, label %58

34:                                               ; preds = %30
  %35 = load i32*, i32** %8, align 8
  %36 = call i32* @TREE_TYPE(i32* %35)
  store i32* %36, i32** %4, align 8
  br label %37

37:                                               ; preds = %42, %34
  %38 = load i32*, i32** %4, align 8
  %39 = call i64 @TREE_CODE(i32* %38)
  %40 = load i64, i64* @ARRAY_TYPE, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %37
  %43 = load i32*, i32** %4, align 8
  %44 = call i32* @TREE_TYPE(i32* %43)
  store i32* %44, i32** %4, align 8
  br label %37

45:                                               ; preds = %37
  %46 = load i32*, i32** %4, align 8
  %47 = load i32*, i32** @error_mark_node, align 8
  %48 = icmp ne i32* %46, %47
  br i1 %48, label %49, label %57

49:                                               ; preds = %45
  %50 = load i32*, i32** %4, align 8
  %51 = call i64 @TYPE_MODE(i32* %50)
  %52 = load i64, i64* @DFmode, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %49
  %55 = load i32, i32* %7, align 4
  %56 = call i32 @MAX(i32 %55, i32 64)
  store i32 %56, i32* %7, align 4
  br label %57

57:                                               ; preds = %54, %49, %45
  br label %58

58:                                               ; preds = %57, %30, %27
  %59 = load i32, i32* %7, align 4
  ret i32 %59
}

declare dso_local i32 @MAX(i32, i32) #1

declare dso_local i32* @TYPE_FIELDS(i32*) #1

declare dso_local i64 @TREE_CODE(i32*) #1

declare dso_local i32* @TREE_CHAIN(i32*) #1

declare dso_local i32* @TREE_TYPE(i32*) #1

declare dso_local i64 @TYPE_MODE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
