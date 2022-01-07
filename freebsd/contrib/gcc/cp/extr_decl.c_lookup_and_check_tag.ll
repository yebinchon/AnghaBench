; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_decl.c_lookup_and_check_tag.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_decl.c_lookup_and_check_tag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ts_global = common dso_local global i64 0, align 8
@ts_within_enclosing_non_class = common dso_local global i64 0, align 8
@TYPE_DECL = common dso_local global i64 0, align 8
@ts_current = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [59 x i8] c"%qD has the same name as the class in which it is declared\00", align 1
@error_mark_node = common dso_local global i64 0, align 8
@TREE_LIST = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"reference to %qD is ambiguous\00", align 1
@NULL_TREE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i64, i64, i32)* @lookup_and_check_tag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @lookup_and_check_tag(i32 %0, i64 %1, i64 %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load i64, i64* %8, align 8
  %13 = load i64, i64* @ts_global, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %25

15:                                               ; preds = %4
  %16 = load i64, i64* %7, align 8
  %17 = call i64 @lookup_name_prefer_type(i64 %16, i32 2)
  store i64 %17, i64* %11, align 8
  %18 = load i64, i64* %11, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %15
  %21 = load i64, i64* %7, align 8
  %22 = load i64, i64* @ts_within_enclosing_non_class, align 8
  %23 = call i64 @lookup_type_scope(i64 %21, i64 %22)
  store i64 %23, i64* %11, align 8
  br label %24

24:                                               ; preds = %20, %15
  br label %29

25:                                               ; preds = %4
  %26 = load i64, i64* %7, align 8
  %27 = load i64, i64* %8, align 8
  %28 = call i64 @lookup_type_scope(i64 %26, i64 %27)
  store i64 %28, i64* %11, align 8
  br label %29

29:                                               ; preds = %25, %24
  %30 = load i64, i64* %11, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %29
  %33 = load i64, i64* %11, align 8
  %34 = call i64 @DECL_CLASS_TEMPLATE_P(i64 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %32
  %37 = load i64, i64* %11, align 8
  %38 = call i64 @DECL_TEMPLATE_RESULT(i64 %37)
  store i64 %38, i64* %11, align 8
  br label %39

39:                                               ; preds = %36, %32, %29
  %40 = load i64, i64* %11, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %68

42:                                               ; preds = %39
  %43 = load i64, i64* %11, align 8
  %44 = call i64 @TREE_CODE(i64 %43)
  %45 = load i64, i64* @TYPE_DECL, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %68

47:                                               ; preds = %42
  %48 = load i64, i64* %8, align 8
  %49 = load i64, i64* @ts_current, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %59

51:                                               ; preds = %47
  %52 = load i64, i64* %11, align 8
  %53 = call i32 @DECL_SELF_REFERENCE_P(i64 %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %51
  %56 = load i64, i64* %11, align 8
  %57 = call i32 @error(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i64 %56)
  %58 = load i64, i64* @error_mark_node, align 8
  store i64 %58, i64* %5, align 8
  br label %84

59:                                               ; preds = %51, %47
  %60 = load i32, i32* %6, align 4
  %61 = load i64, i64* %11, align 8
  %62 = load i32, i32* %9, align 4
  %63 = load i64, i64* %11, align 8
  %64 = call i32 @DECL_SELF_REFERENCE_P(i64 %63)
  %65 = or i32 %62, %64
  %66 = call i64 @check_elaborated_type_specifier(i32 %60, i64 %61, i32 %65)
  store i64 %66, i64* %10, align 8
  %67 = load i64, i64* %10, align 8
  store i64 %67, i64* %5, align 8
  br label %84

68:                                               ; preds = %42, %39
  %69 = load i64, i64* %11, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %82

71:                                               ; preds = %68
  %72 = load i64, i64* %11, align 8
  %73 = call i64 @TREE_CODE(i64 %72)
  %74 = load i64, i64* @TREE_LIST, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %82

76:                                               ; preds = %71
  %77 = load i64, i64* %7, align 8
  %78 = call i32 @error(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i64 %77)
  %79 = load i64, i64* %11, align 8
  %80 = call i32 @print_candidates(i64 %79)
  %81 = load i64, i64* @error_mark_node, align 8
  store i64 %81, i64* %5, align 8
  br label %84

82:                                               ; preds = %71, %68
  %83 = load i64, i64* @NULL_TREE, align 8
  store i64 %83, i64* %5, align 8
  br label %84

84:                                               ; preds = %82, %76, %59, %55
  %85 = load i64, i64* %5, align 8
  ret i64 %85
}

declare dso_local i64 @lookup_name_prefer_type(i64, i32) #1

declare dso_local i64 @lookup_type_scope(i64, i64) #1

declare dso_local i64 @DECL_CLASS_TEMPLATE_P(i64) #1

declare dso_local i64 @DECL_TEMPLATE_RESULT(i64) #1

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i32 @DECL_SELF_REFERENCE_P(i64) #1

declare dso_local i32 @error(i8*, i64) #1

declare dso_local i64 @check_elaborated_type_specifier(i32, i64, i32) #1

declare dso_local i32 @print_candidates(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
