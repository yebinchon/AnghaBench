; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_typeck.c_casts_away_constness_r.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_typeck.c_casts_away_constness_r.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@void_type_node = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*)* @casts_away_constness_r to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @casts_away_constness_r(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @TYPE_PTR_P(i32 %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %2
  %12 = load i32*, i32** %3, align 8
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @TYPE_PTRMEM_P(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %26

16:                                               ; preds = %11, %2
  %17 = load i32*, i32** %4, align 8
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @TYPE_PTR_P(i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %39, label %21

21:                                               ; preds = %16
  %22 = load i32*, i32** %4, align 8
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @TYPE_PTRMEM_P(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %39, label %26

26:                                               ; preds = %21, %11
  %27 = load i32, i32* @void_type_node, align 4
  %28 = load i32*, i32** %3, align 8
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @cp_type_quals(i32 %29)
  %31 = call i32 @cp_build_qualified_type(i32 %27, i32 %30)
  %32 = load i32*, i32** %3, align 8
  store i32 %31, i32* %32, align 4
  %33 = load i32, i32* @void_type_node, align 4
  %34 = load i32*, i32** %4, align 8
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @cp_type_quals(i32 %35)
  %37 = call i32 @cp_build_qualified_type(i32 %33, i32 %36)
  %38 = load i32*, i32** %4, align 8
  store i32 %37, i32* %38, align 4
  br label %96

39:                                               ; preds = %21, %16
  %40 = load i32*, i32** %3, align 8
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @cp_type_quals(i32 %41)
  store i32 %42, i32* %5, align 4
  %43 = load i32*, i32** %4, align 8
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @cp_type_quals(i32 %44)
  store i32 %45, i32* %6, align 4
  %46 = load i32*, i32** %3, align 8
  %47 = load i32, i32* %46, align 4
  %48 = call i64 @TYPE_PTRMEM_P(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %39
  %51 = load i32*, i32** %3, align 8
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @TYPE_PTRMEM_POINTED_TO_TYPE(i32 %52)
  %54 = load i32*, i32** %3, align 8
  store i32 %53, i32* %54, align 4
  br label %60

55:                                               ; preds = %39
  %56 = load i32*, i32** %3, align 8
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @TREE_TYPE(i32 %57)
  %59 = load i32*, i32** %3, align 8
  store i32 %58, i32* %59, align 4
  br label %60

60:                                               ; preds = %55, %50
  %61 = load i32*, i32** %4, align 8
  %62 = load i32, i32* %61, align 4
  %63 = call i64 @TYPE_PTRMEM_P(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %60
  %66 = load i32*, i32** %4, align 8
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @TYPE_PTRMEM_POINTED_TO_TYPE(i32 %67)
  %69 = load i32*, i32** %4, align 8
  store i32 %68, i32* %69, align 4
  br label %75

70:                                               ; preds = %60
  %71 = load i32*, i32** %4, align 8
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @TREE_TYPE(i32 %72)
  %74 = load i32*, i32** %4, align 8
  store i32 %73, i32* %74, align 4
  br label %75

75:                                               ; preds = %70, %65
  %76 = load i32*, i32** %3, align 8
  %77 = load i32*, i32** %4, align 8
  call void @casts_away_constness_r(i32* %76, i32* %77)
  %78 = load i32*, i32** %3, align 8
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @build_pointer_type(i32 %79)
  %81 = load i32*, i32** %3, align 8
  store i32 %80, i32* %81, align 4
  %82 = load i32*, i32** %4, align 8
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @build_pointer_type(i32 %83)
  %85 = load i32*, i32** %4, align 8
  store i32 %84, i32* %85, align 4
  %86 = load i32*, i32** %3, align 8
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* %5, align 4
  %89 = call i32 @cp_build_qualified_type(i32 %87, i32 %88)
  %90 = load i32*, i32** %3, align 8
  store i32 %89, i32* %90, align 4
  %91 = load i32*, i32** %4, align 8
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* %6, align 4
  %94 = call i32 @cp_build_qualified_type(i32 %92, i32 %93)
  %95 = load i32*, i32** %4, align 8
  store i32 %94, i32* %95, align 4
  br label %96

96:                                               ; preds = %75, %26
  ret void
}

declare dso_local i32 @TYPE_PTR_P(i32) #1

declare dso_local i64 @TYPE_PTRMEM_P(i32) #1

declare dso_local i32 @cp_build_qualified_type(i32, i32) #1

declare dso_local i32 @cp_type_quals(i32) #1

declare dso_local i32 @TYPE_PTRMEM_POINTED_TO_TYPE(i32) #1

declare dso_local i32 @TREE_TYPE(i32) #1

declare dso_local i32 @build_pointer_type(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
