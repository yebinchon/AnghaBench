; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_dominance.c_iterate_fix_dominators.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_dominance.c_iterate_fix_dominators.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@dom_computed = common dso_local global i32** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iterate_fix_dominators(i32 %0, i32** %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  store i32 %0, i32* %4, align 4
  store i32** %1, i32*** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 1, i32* %8, align 4
  %11 = load i32**, i32*** @dom_computed, align 8
  %12 = load i32, i32* %4, align 4
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds i32*, i32** %11, i64 %13
  %15 = load i32*, i32** %14, align 8
  %16 = call i32 @gcc_assert(i32* %15)
  store i32 0, i32* %7, align 4
  br label %17

17:                                               ; preds = %29, %3
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %32

21:                                               ; preds = %17
  %22 = load i32, i32* %4, align 4
  %23 = load i32**, i32*** %5, align 8
  %24 = load i32, i32* %7, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32*, i32** %23, i64 %25
  %27 = load i32*, i32** %26, align 8
  %28 = call i32 @set_immediate_dominator(i32 %22, i32* %27, i32* null)
  br label %29

29:                                               ; preds = %21
  %30 = load i32, i32* %7, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %7, align 4
  br label %17

32:                                               ; preds = %17
  br label %33

33:                                               ; preds = %72, %32
  %34 = load i32, i32* %8, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %73

36:                                               ; preds = %33
  store i32 0, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %37

37:                                               ; preds = %69, %36
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* %6, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %72

41:                                               ; preds = %37
  %42 = load i32, i32* %4, align 4
  %43 = load i32**, i32*** %5, align 8
  %44 = load i32, i32* %7, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32*, i32** %43, i64 %45
  %47 = load i32*, i32** %46, align 8
  %48 = call i32* @get_immediate_dominator(i32 %42, i32* %47)
  store i32* %48, i32** %9, align 8
  %49 = load i32, i32* %4, align 4
  %50 = load i32**, i32*** %5, align 8
  %51 = load i32, i32* %7, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32*, i32** %50, i64 %52
  %54 = load i32*, i32** %53, align 8
  %55 = call i32* @recount_dominator(i32 %49, i32* %54)
  store i32* %55, i32** %10, align 8
  %56 = load i32*, i32** %9, align 8
  %57 = load i32*, i32** %10, align 8
  %58 = icmp ne i32* %56, %57
  br i1 %58, label %59, label %68

59:                                               ; preds = %41
  store i32 1, i32* %8, align 4
  %60 = load i32, i32* %4, align 4
  %61 = load i32**, i32*** %5, align 8
  %62 = load i32, i32* %7, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32*, i32** %61, i64 %63
  %65 = load i32*, i32** %64, align 8
  %66 = load i32*, i32** %10, align 8
  %67 = call i32 @set_immediate_dominator(i32 %60, i32* %65, i32* %66)
  br label %68

68:                                               ; preds = %59, %41
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %7, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %7, align 4
  br label %37

72:                                               ; preds = %37
  br label %33

73:                                               ; preds = %33
  store i32 0, i32* %7, align 4
  br label %74

74:                                               ; preds = %87, %73
  %75 = load i32, i32* %7, align 4
  %76 = load i32, i32* %6, align 4
  %77 = icmp slt i32 %75, %76
  br i1 %77, label %78, label %90

78:                                               ; preds = %74
  %79 = load i32, i32* %4, align 4
  %80 = load i32**, i32*** %5, align 8
  %81 = load i32, i32* %7, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32*, i32** %80, i64 %82
  %84 = load i32*, i32** %83, align 8
  %85 = call i32* @get_immediate_dominator(i32 %79, i32* %84)
  %86 = call i32 @gcc_assert(i32* %85)
  br label %87

87:                                               ; preds = %78
  %88 = load i32, i32* %7, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %7, align 4
  br label %74

90:                                               ; preds = %74
  ret void
}

declare dso_local i32 @gcc_assert(i32*) #1

declare dso_local i32 @set_immediate_dominator(i32, i32*, i32*) #1

declare dso_local i32* @get_immediate_dominator(i32, i32*) #1

declare dso_local i32* @recount_dominator(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
