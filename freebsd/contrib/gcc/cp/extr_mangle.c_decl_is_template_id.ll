; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_mangle.c_decl_is_template_id.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_mangle.c_decl_is_template_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TYPE_DECL = common dso_local global i64 0, align 8
@TEMPLATE_DECL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*)* @decl_is_template_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decl_is_template_id(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  %7 = load i32, i32* %4, align 4
  %8 = call i64 @TREE_CODE(i32 %7)
  %9 = load i64, i64* @TYPE_DECL, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %30

11:                                               ; preds = %2
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @TREE_TYPE(i32 %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = call i64 @CLASS_TYPE_P(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %29

17:                                               ; preds = %11
  %18 = load i32, i32* %6, align 4
  %19 = call i64 @CLASSTYPE_TEMPLATE_ID_P(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %17
  %22 = load i32*, i32** %5, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %28

24:                                               ; preds = %21
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @TYPE_TEMPLATE_INFO(i32 %25)
  %27 = load i32*, i32** %5, align 8
  store i32 %26, i32* %27, align 4
  br label %28

28:                                               ; preds = %24, %21
  store i32 1, i32* %3, align 4
  br label %58

29:                                               ; preds = %17, %11
  br label %57

30:                                               ; preds = %2
  %31 = load i32, i32* %4, align 4
  %32 = call i32* @DECL_LANG_SPECIFIC(i32 %31)
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %56

34:                                               ; preds = %30
  %35 = load i32, i32* %4, align 4
  %36 = call i64 @DECL_USE_TEMPLATE(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %56

38:                                               ; preds = %34
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @DECL_TI_TEMPLATE(i32 %39)
  %41 = call i64 @PRIMARY_TEMPLATE_P(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %56

43:                                               ; preds = %38
  %44 = load i32, i32* %4, align 4
  %45 = call i64 @TREE_CODE(i32 %44)
  %46 = load i64, i64* @TEMPLATE_DECL, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %56

48:                                               ; preds = %43
  %49 = load i32*, i32** %5, align 8
  %50 = icmp ne i32* %49, null
  br i1 %50, label %51, label %55

51:                                               ; preds = %48
  %52 = load i32, i32* %4, align 4
  %53 = call i32 @DECL_TEMPLATE_INFO(i32 %52)
  %54 = load i32*, i32** %5, align 8
  store i32 %53, i32* %54, align 4
  br label %55

55:                                               ; preds = %51, %48
  store i32 1, i32* %3, align 4
  br label %58

56:                                               ; preds = %43, %38, %34, %30
  br label %57

57:                                               ; preds = %56, %29
  store i32 0, i32* %3, align 4
  br label %58

58:                                               ; preds = %57, %55, %28
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i64 @TREE_CODE(i32) #1

declare dso_local i32 @TREE_TYPE(i32) #1

declare dso_local i64 @CLASS_TYPE_P(i32) #1

declare dso_local i64 @CLASSTYPE_TEMPLATE_ID_P(i32) #1

declare dso_local i32 @TYPE_TEMPLATE_INFO(i32) #1

declare dso_local i32* @DECL_LANG_SPECIFIC(i32) #1

declare dso_local i64 @DECL_USE_TEMPLATE(i32) #1

declare dso_local i64 @PRIMARY_TEMPLATE_P(i32) #1

declare dso_local i32 @DECL_TI_TEMPLATE(i32) #1

declare dso_local i32 @DECL_TEMPLATE_INFO(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
