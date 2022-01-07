; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_decl2.c_min_vis_r.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_decl2.c_min_vis_r.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VISIBILITY_ANON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32**, i32*, i8*)* @min_vis_r to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @min_vis_r(i32** %0, i32* %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  store i32** %0, i32*** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load i8*, i8** %7, align 8
  %10 = bitcast i8* %9 to i32*
  store i32* %10, i32** %8, align 8
  %11 = load i32**, i32*** %5, align 8
  %12 = load i32*, i32** %11, align 8
  %13 = call i32 @TYPE_P(i32* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %3
  %16 = load i32*, i32** %6, align 8
  store i32 0, i32* %16, align 4
  br label %48

17:                                               ; preds = %3
  %18 = load i32**, i32*** %5, align 8
  %19 = load i32*, i32** %18, align 8
  %20 = call i64 @CLASS_TYPE_P(i32* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %47

22:                                               ; preds = %17
  %23 = load i32**, i32*** %5, align 8
  %24 = load i32*, i32** %23, align 8
  %25 = call i32 @TYPE_MAIN_DECL(i32* %24)
  %26 = call i32 @TREE_PUBLIC(i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %22
  %29 = load i32, i32* @VISIBILITY_ANON, align 4
  %30 = load i32*, i32** %8, align 8
  store i32 %29, i32* %30, align 4
  %31 = load i32**, i32*** %5, align 8
  %32 = load i32*, i32** %31, align 8
  store i32* %32, i32** %4, align 8
  br label %49

33:                                               ; preds = %22
  %34 = load i32**, i32*** %5, align 8
  %35 = load i32*, i32** %34, align 8
  %36 = call i32 @CLASSTYPE_VISIBILITY(i32* %35)
  %37 = load i32*, i32** %8, align 8
  %38 = load i32, i32* %37, align 4
  %39 = icmp sgt i32 %36, %38
  br i1 %39, label %40, label %45

40:                                               ; preds = %33
  %41 = load i32**, i32*** %5, align 8
  %42 = load i32*, i32** %41, align 8
  %43 = call i32 @CLASSTYPE_VISIBILITY(i32* %42)
  %44 = load i32*, i32** %8, align 8
  store i32 %43, i32* %44, align 4
  br label %45

45:                                               ; preds = %40, %33
  br label %46

46:                                               ; preds = %45
  br label %47

47:                                               ; preds = %46, %17
  br label %48

48:                                               ; preds = %47, %15
  store i32* null, i32** %4, align 8
  br label %49

49:                                               ; preds = %48, %28
  %50 = load i32*, i32** %4, align 8
  ret i32* %50
}

declare dso_local i32 @TYPE_P(i32*) #1

declare dso_local i64 @CLASS_TYPE_P(i32*) #1

declare dso_local i32 @TREE_PUBLIC(i32) #1

declare dso_local i32 @TYPE_MAIN_DECL(i32*) #1

declare dso_local i32 @CLASSTYPE_VISIBILITY(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
