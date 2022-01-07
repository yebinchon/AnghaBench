; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_call.c_conditional_conversion.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_call.c_conditional_conversion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LOOKUP_NO_TEMP_BIND = common dso_local global i32 0, align 4
@ck_base = common dso_local global i32 0, align 4
@ck_rvalue = common dso_local global i32 0, align 4
@LOOKUP_NORMAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32, i32)* @conditional_conversion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @conditional_conversion(i32 %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @TREE_TYPE(i32 %10)
  %12 = call i32 @non_reference(i32 %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @TREE_TYPE(i32 %13)
  %15 = call i32 @non_reference(i32 %14)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %5, align 4
  %17 = call i64 @real_lvalue_p(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %31

19:                                               ; preds = %2
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @build_reference_type(i32 %20)
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @LOOKUP_NO_TEMP_BIND, align 4
  %25 = call i32* @implicit_conversion(i32 %21, i32 %22, i32 %23, i32 0, i32 %24)
  store i32* %25, i32** %8, align 8
  %26 = load i32*, i32** %8, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %19
  %29 = load i32*, i32** %8, align 8
  store i32* %29, i32** %3, align 8
  br label %86

30:                                               ; preds = %19
  br label %31

31:                                               ; preds = %30, %2
  %32 = load i32, i32* %6, align 4
  %33 = call i64 @CLASS_TYPE_P(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %80

35:                                               ; preds = %31
  %36 = load i32, i32* %7, align 4
  %37 = call i64 @CLASS_TYPE_P(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %80

39:                                               ; preds = %35
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @DERIVED_FROM_P(i32 %40, i32 %41)
  store i32 %42, i32* %9, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %49, label %44

44:                                               ; preds = %39
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* %7, align 4
  %47 = call i32 @DERIVED_FROM_P(i32 %45, i32 %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %80

49:                                               ; preds = %44, %39
  %50 = load i32, i32* %9, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %79

52:                                               ; preds = %49
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* %6, align 4
  %55 = call i64 @at_least_as_qualified_p(i32 %53, i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %79

57:                                               ; preds = %52
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* %4, align 4
  %60 = call i32* @build_identity_conv(i32 %58, i32 %59)
  store i32* %60, i32** %8, align 8
  %61 = load i32, i32* %6, align 4
  %62 = call i32 @TYPE_MAIN_VARIANT(i32 %61)
  %63 = load i32, i32* %7, align 4
  %64 = call i32 @TYPE_MAIN_VARIANT(i32 %63)
  %65 = call i32 @same_type_p(i32 %62, i32 %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %72, label %67

67:                                               ; preds = %57
  %68 = load i32, i32* @ck_base, align 4
  %69 = load i32, i32* %7, align 4
  %70 = load i32*, i32** %8, align 8
  %71 = call i32* @build_conv(i32 %68, i32 %69, i32* %70)
  store i32* %71, i32** %8, align 8
  br label %77

72:                                               ; preds = %57
  %73 = load i32, i32* @ck_rvalue, align 4
  %74 = load i32, i32* %7, align 4
  %75 = load i32*, i32** %8, align 8
  %76 = call i32* @build_conv(i32 %73, i32 %74, i32* %75)
  store i32* %76, i32** %8, align 8
  br label %77

77:                                               ; preds = %72, %67
  %78 = load i32*, i32** %8, align 8
  store i32* %78, i32** %3, align 8
  br label %86

79:                                               ; preds = %52, %49
  store i32* null, i32** %3, align 8
  br label %86

80:                                               ; preds = %44, %35, %31
  %81 = load i32, i32* %7, align 4
  %82 = load i32, i32* %6, align 4
  %83 = load i32, i32* %4, align 4
  %84 = load i32, i32* @LOOKUP_NORMAL, align 4
  %85 = call i32* @implicit_conversion(i32 %81, i32 %82, i32 %83, i32 0, i32 %84)
  store i32* %85, i32** %3, align 8
  br label %86

86:                                               ; preds = %80, %79, %77, %28
  %87 = load i32*, i32** %3, align 8
  ret i32* %87
}

declare dso_local i32 @non_reference(i32) #1

declare dso_local i32 @TREE_TYPE(i32) #1

declare dso_local i64 @real_lvalue_p(i32) #1

declare dso_local i32* @implicit_conversion(i32, i32, i32, i32, i32) #1

declare dso_local i32 @build_reference_type(i32) #1

declare dso_local i64 @CLASS_TYPE_P(i32) #1

declare dso_local i32 @DERIVED_FROM_P(i32, i32) #1

declare dso_local i64 @at_least_as_qualified_p(i32, i32) #1

declare dso_local i32* @build_identity_conv(i32, i32) #1

declare dso_local i32 @same_type_p(i32, i32) #1

declare dso_local i32 @TYPE_MAIN_VARIANT(i32) #1

declare dso_local i32* @build_conv(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
