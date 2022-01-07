; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_mangle.c_is_std_substitution.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_mangle.c_is_std_substitution.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@subst_identifiers = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64)* @is_std_substitution to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_std_substitution(i32* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32* null, i32** %6, align 8
  store i32* null, i32** %7, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = call i64 @DECL_P(i32* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = load i32*, i32** %4, align 8
  %13 = call i32* @TREE_TYPE(i32* %12)
  store i32* %13, i32** %6, align 8
  %14 = load i32*, i32** %4, align 8
  store i32* %14, i32** %7, align 8
  br label %25

15:                                               ; preds = %2
  %16 = load i32*, i32** %4, align 8
  %17 = call i64 @CLASS_TYPE_P(i32* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %15
  %20 = load i32*, i32** %4, align 8
  store i32* %20, i32** %6, align 8
  %21 = load i32*, i32** %4, align 8
  %22 = call i32* @TYPE_NAME(i32* %21)
  store i32* %22, i32** %7, align 8
  br label %24

23:                                               ; preds = %15
  store i32 0, i32* %3, align 4
  br label %50

24:                                               ; preds = %19
  br label %25

25:                                               ; preds = %24, %11
  %26 = load i32*, i32** %7, align 8
  %27 = call i32 @CP_DECL_CONTEXT(i32* %26)
  %28 = call i64 @DECL_NAMESPACE_STD_P(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %47

30:                                               ; preds = %25
  %31 = load i32*, i32** %6, align 8
  %32 = call i64 @TYPE_LANG_SPECIFIC(i32* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %47

34:                                               ; preds = %30
  %35 = load i32*, i32** %6, align 8
  %36 = call i64 @TYPE_TEMPLATE_INFO(i32* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %47

38:                                               ; preds = %34
  %39 = load i32*, i32** %6, align 8
  %40 = call i32 @TYPE_TI_TEMPLATE(i32* %39)
  %41 = call i64 @DECL_NAME(i32 %40)
  %42 = load i64*, i64** @subst_identifiers, align 8
  %43 = load i64, i64* %5, align 8
  %44 = getelementptr inbounds i64, i64* %42, i64 %43
  %45 = load i64, i64* %44, align 8
  %46 = icmp eq i64 %41, %45
  br label %47

47:                                               ; preds = %38, %34, %30, %25
  %48 = phi i1 [ false, %34 ], [ false, %30 ], [ false, %25 ], [ %46, %38 ]
  %49 = zext i1 %48 to i32
  store i32 %49, i32* %3, align 4
  br label %50

50:                                               ; preds = %47, %23
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i64 @DECL_P(i32*) #1

declare dso_local i32* @TREE_TYPE(i32*) #1

declare dso_local i64 @CLASS_TYPE_P(i32*) #1

declare dso_local i32* @TYPE_NAME(i32*) #1

declare dso_local i64 @DECL_NAMESPACE_STD_P(i32) #1

declare dso_local i32 @CP_DECL_CONTEXT(i32*) #1

declare dso_local i64 @TYPE_LANG_SPECIFIC(i32*) #1

declare dso_local i64 @TYPE_TEMPLATE_INFO(i32*) #1

declare dso_local i64 @DECL_NAME(i32) #1

declare dso_local i32 @TYPE_TI_TEMPLATE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
