; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_search.c_original_binfo.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_search.c_original_binfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NULL_TREE = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @original_binfo(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32* null, i32** %5, align 8
  %9 = load i32*, i32** %3, align 8
  %10 = call i32 @BINFO_TYPE(i32* %9)
  %11 = load i32*, i32** %4, align 8
  %12 = call i32 @BINFO_TYPE(i32* %11)
  %13 = call i64 @SAME_BINFO_TYPE_P(i32 %10, i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32*, i32** %4, align 8
  store i32* %16, i32** %5, align 8
  br label %70

17:                                               ; preds = %2
  %18 = load i32*, i32** %3, align 8
  %19 = call i64 @BINFO_VIRTUAL_P(i32* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %36

21:                                               ; preds = %17
  %22 = load i32*, i32** %4, align 8
  %23 = call i32 @BINFO_TYPE(i32* %22)
  %24 = call i64 @CLASSTYPE_VBASECLASSES(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %21
  %27 = load i32*, i32** %3, align 8
  %28 = call i32 @BINFO_TYPE(i32* %27)
  %29 = load i32*, i32** %4, align 8
  %30 = call i32 @BINFO_TYPE(i32* %29)
  %31 = call i32* @binfo_for_vbase(i32 %28, i32 %30)
  br label %34

32:                                               ; preds = %21
  %33 = load i32*, i32** @NULL_TREE, align 8
  br label %34

34:                                               ; preds = %32, %26
  %35 = phi i32* [ %31, %26 ], [ %33, %32 ]
  store i32* %35, i32** %5, align 8
  br label %69

36:                                               ; preds = %17
  %37 = load i32*, i32** %3, align 8
  %38 = call i32* @BINFO_INHERITANCE_CHAIN(i32* %37)
  %39 = icmp ne i32* %38, null
  br i1 %39, label %40, label %68

40:                                               ; preds = %36
  %41 = load i32*, i32** %3, align 8
  %42 = call i32* @BINFO_INHERITANCE_CHAIN(i32* %41)
  %43 = load i32*, i32** %4, align 8
  %44 = call i32* @original_binfo(i32* %42, i32* %43)
  store i32* %44, i32** %6, align 8
  %45 = load i32*, i32** %6, align 8
  %46 = icmp ne i32* %45, null
  br i1 %46, label %47, label %67

47:                                               ; preds = %40
  store i32 0, i32* %7, align 4
  br label %48

48:                                               ; preds = %63, %47
  %49 = load i32*, i32** %6, align 8
  %50 = load i32, i32* %7, align 4
  %51 = call i32* @BINFO_BASE_BINFO(i32* %49, i32 %50)
  store i32* %51, i32** %8, align 8
  %52 = icmp ne i32* %51, null
  br i1 %52, label %53, label %66

53:                                               ; preds = %48
  %54 = load i32*, i32** %8, align 8
  %55 = call i32 @BINFO_TYPE(i32* %54)
  %56 = load i32*, i32** %3, align 8
  %57 = call i32 @BINFO_TYPE(i32* %56)
  %58 = call i64 @SAME_BINFO_TYPE_P(i32 %55, i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %53
  %61 = load i32*, i32** %8, align 8
  store i32* %61, i32** %5, align 8
  br label %66

62:                                               ; preds = %53
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %7, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %7, align 4
  br label %48

66:                                               ; preds = %60, %48
  br label %67

67:                                               ; preds = %66, %40
  br label %68

68:                                               ; preds = %67, %36
  br label %69

69:                                               ; preds = %68, %34
  br label %70

70:                                               ; preds = %69, %15
  %71 = load i32*, i32** %5, align 8
  ret i32* %71
}

declare dso_local i64 @SAME_BINFO_TYPE_P(i32, i32) #1

declare dso_local i32 @BINFO_TYPE(i32*) #1

declare dso_local i64 @BINFO_VIRTUAL_P(i32*) #1

declare dso_local i64 @CLASSTYPE_VBASECLASSES(i32) #1

declare dso_local i32* @binfo_for_vbase(i32, i32) #1

declare dso_local i32* @BINFO_INHERITANCE_CHAIN(i32*) #1

declare dso_local i32* @BINFO_BASE_BINFO(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
