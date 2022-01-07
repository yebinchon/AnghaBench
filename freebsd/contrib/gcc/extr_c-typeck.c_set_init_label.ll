; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-typeck.c_set_init_label.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-typeck.c_set_init_label.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NULL_TREE = common dso_local global i64 0, align 8
@designator_erroneous = common dso_local global i32 0, align 4
@constructor_type = common dso_local global i32 0, align 4
@RECORD_TYPE = common dso_local global i64 0, align 8
@UNION_TYPE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [46 x i8] c"field name not in record or union initializer\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"unknown field %qE specified in initializer\00", align 1
@constructor_fields = common dso_local global i64 0, align 8
@designator_depth = common dso_local global i32 0, align 4
@constructor_range_stack = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_init_label(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %5 = load i64, i64* @NULL_TREE, align 8
  store i64 %5, i64* %3, align 8
  %6 = call i64 @set_designator(i32 0)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %96

9:                                                ; preds = %1
  store i32 1, i32* @designator_erroneous, align 4
  %10 = load i32, i32* @constructor_type, align 4
  %11 = call i64 @TREE_CODE(i32 %10)
  %12 = load i64, i64* @RECORD_TYPE, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %21

14:                                               ; preds = %9
  %15 = load i32, i32* @constructor_type, align 4
  %16 = call i64 @TREE_CODE(i32 %15)
  %17 = load i64, i64* @UNION_TYPE, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %14
  %20 = call i32 @error_init(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  br label %96

21:                                               ; preds = %14, %9
  %22 = load i32, i32* @constructor_type, align 4
  %23 = call i64 @TYPE_FIELDS(i32 %22)
  store i64 %23, i64* %4, align 8
  br label %24

24:                                               ; preds = %59, %21
  %25 = load i64, i64* %4, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %62

27:                                               ; preds = %24
  %28 = load i64, i64* %4, align 8
  %29 = call i64 @DECL_NAME(i64 %28)
  %30 = load i64, i64* @NULL_TREE, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %52

32:                                               ; preds = %27
  %33 = load i64, i64* %4, align 8
  %34 = call i32 @TREE_TYPE(i64 %33)
  %35 = call i64 @TREE_CODE(i32 %34)
  %36 = load i64, i64* @RECORD_TYPE, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %44, label %38

38:                                               ; preds = %32
  %39 = load i64, i64* %4, align 8
  %40 = call i32 @TREE_TYPE(i64 %39)
  %41 = call i64 @TREE_CODE(i32 %40)
  %42 = load i64, i64* @UNION_TYPE, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %52

44:                                               ; preds = %38, %32
  %45 = load i64, i64* %4, align 8
  %46 = load i64, i64* %2, align 8
  %47 = call i64 @lookup_field(i64 %45, i64 %46)
  store i64 %47, i64* %3, align 8
  %48 = load i64, i64* %3, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %44
  br label %62

51:                                               ; preds = %44
  br label %52

52:                                               ; preds = %51, %38, %27
  %53 = load i64, i64* %4, align 8
  %54 = call i64 @DECL_NAME(i64 %53)
  %55 = load i64, i64* %2, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %52
  br label %62

58:                                               ; preds = %52
  br label %59

59:                                               ; preds = %58
  %60 = load i64, i64* %4, align 8
  %61 = call i64 @TREE_CHAIN(i64 %60)
  store i64 %61, i64* %4, align 8
  br label %24

62:                                               ; preds = %57, %50, %24
  %63 = load i64, i64* %4, align 8
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %62
  %66 = load i64, i64* %2, align 8
  %67 = call i32 @error(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i64 %66)
  br label %68

68:                                               ; preds = %65, %62
  br label %69

69:                                               ; preds = %95, %68
  %70 = load i64, i64* %4, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %96

72:                                               ; preds = %69
  %73 = load i64, i64* %4, align 8
  store i64 %73, i64* @constructor_fields, align 8
  %74 = load i32, i32* @designator_depth, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* @designator_depth, align 4
  store i32 0, i32* @designator_erroneous, align 4
  %76 = load i64, i64* @constructor_range_stack, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %72
  %79 = load i64, i64* @NULL_TREE, align 8
  %80 = call i32 @push_range_stack(i64 %79)
  br label %81

81:                                               ; preds = %78, %72
  %82 = load i64, i64* %3, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %93

84:                                               ; preds = %81
  %85 = call i64 @set_designator(i32 0)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %84
  br label %96

88:                                               ; preds = %84
  %89 = load i64, i64* %3, align 8
  %90 = call i64 @TREE_VALUE(i64 %89)
  store i64 %90, i64* %4, align 8
  %91 = load i64, i64* %3, align 8
  %92 = call i64 @TREE_CHAIN(i64 %91)
  store i64 %92, i64* %3, align 8
  br label %95

93:                                               ; preds = %81
  %94 = load i64, i64* @NULL_TREE, align 8
  store i64 %94, i64* %4, align 8
  br label %95

95:                                               ; preds = %93, %88
  br label %69

96:                                               ; preds = %8, %19, %87, %69
  ret void
}

declare dso_local i64 @set_designator(i32) #1

declare dso_local i64 @TREE_CODE(i32) #1

declare dso_local i32 @error_init(i8*) #1

declare dso_local i64 @TYPE_FIELDS(i32) #1

declare dso_local i64 @DECL_NAME(i64) #1

declare dso_local i32 @TREE_TYPE(i64) #1

declare dso_local i64 @lookup_field(i64, i64) #1

declare dso_local i64 @TREE_CHAIN(i64) #1

declare dso_local i32 @error(i8*, i64) #1

declare dso_local i32 @push_range_stack(i64) #1

declare dso_local i64 @TREE_VALUE(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
