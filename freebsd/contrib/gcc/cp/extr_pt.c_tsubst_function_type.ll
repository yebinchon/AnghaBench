; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_pt.c_tsubst_function_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_pt.c_tsubst_function_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NULL_TREE = common dso_local global i64 0, align 8
@error_mark_node = common dso_local global i64 0, align 8
@ARRAY_TYPE = common dso_local global i64 0, align 8
@FUNCTION_TYPE = common dso_local global i64 0, align 8
@tf_error = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"function returning an array\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"function returning a function\00", align 1
@.str.2 = private unnamed_addr constant [58 x i8] c"creating pointer to member function of non-class type %qT\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i64, i32, i64)* @tsubst_function_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @tsubst_function_type(i64 %0, i64 %1, i32 %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %14 = load i64, i64* %6, align 8
  %15 = call i64 @TYPE_CONTEXT(i64 %14)
  %16 = load i64, i64* @NULL_TREE, align 8
  %17 = icmp eq i64 %15, %16
  %18 = zext i1 %17 to i32
  %19 = call i32 @gcc_assert(i32 %18)
  %20 = load i64, i64* %6, align 8
  %21 = call i64 @TREE_TYPE(i64 %20)
  %22 = load i64, i64* %7, align 8
  %23 = load i32, i32* %8, align 4
  %24 = load i64, i64* %9, align 8
  %25 = call i64 @tsubst(i64 %21, i64 %22, i32 %23, i64 %24)
  store i64 %25, i64* %10, align 8
  %26 = load i64, i64* %10, align 8
  %27 = load i64, i64* @error_mark_node, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %4
  %30 = load i64, i64* @error_mark_node, align 8
  store i64 %30, i64* %5, align 8
  br label %113

31:                                               ; preds = %4
  %32 = load i64, i64* %10, align 8
  %33 = call i64 @TREE_CODE(i64 %32)
  %34 = load i64, i64* @ARRAY_TYPE, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %41, label %36

36:                                               ; preds = %31
  %37 = load i64, i64* %10, align 8
  %38 = call i64 @TREE_CODE(i64 %37)
  %39 = load i64, i64* @FUNCTION_TYPE, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %58

41:                                               ; preds = %36, %31
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* @tf_error, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %56

46:                                               ; preds = %41
  %47 = load i64, i64* %10, align 8
  %48 = call i64 @TREE_CODE(i64 %47)
  %49 = load i64, i64* @ARRAY_TYPE, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %46
  %52 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %55

53:                                               ; preds = %46
  %54 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %55

55:                                               ; preds = %53, %51
  br label %56

56:                                               ; preds = %55, %41
  %57 = load i64, i64* @error_mark_node, align 8
  store i64 %57, i64* %5, align 8
  br label %113

58:                                               ; preds = %36
  %59 = load i64, i64* %6, align 8
  %60 = call i32 @TYPE_ARG_TYPES(i64 %59)
  %61 = load i64, i64* %7, align 8
  %62 = load i32, i32* %8, align 4
  %63 = load i64, i64* %9, align 8
  %64 = call i64 @tsubst_arg_types(i32 %60, i64 %61, i32 %62, i64 %63)
  store i64 %64, i64* %11, align 8
  %65 = load i64, i64* %11, align 8
  %66 = load i64, i64* @error_mark_node, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %58
  %69 = load i64, i64* @error_mark_node, align 8
  store i64 %69, i64* %5, align 8
  br label %113

70:                                               ; preds = %58
  %71 = load i64, i64* %6, align 8
  %72 = call i64 @TREE_CODE(i64 %71)
  %73 = load i64, i64* @FUNCTION_TYPE, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %79

75:                                               ; preds = %70
  %76 = load i64, i64* %10, align 8
  %77 = load i64, i64* %11, align 8
  %78 = call i64 @build_function_type(i64 %76, i64 %77)
  store i64 %78, i64* %12, align 8
  br label %102

79:                                               ; preds = %70
  %80 = load i64, i64* %11, align 8
  %81 = call i64 @TREE_VALUE(i64 %80)
  %82 = call i64 @TREE_TYPE(i64 %81)
  store i64 %82, i64* %13, align 8
  %83 = load i64, i64* %13, align 8
  %84 = call i32 @IS_AGGR_TYPE(i64 %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %96, label %86

86:                                               ; preds = %79
  %87 = load i32, i32* %8, align 4
  %88 = load i32, i32* @tf_error, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %86
  %92 = load i64, i64* %13, align 8
  %93 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.2, i64 0, i64 0), i64 %92)
  br label %94

94:                                               ; preds = %91, %86
  %95 = load i64, i64* @error_mark_node, align 8
  store i64 %95, i64* %5, align 8
  br label %113

96:                                               ; preds = %79
  %97 = load i64, i64* %13, align 8
  %98 = load i64, i64* %10, align 8
  %99 = load i64, i64* %11, align 8
  %100 = call i32 @TREE_CHAIN(i64 %99)
  %101 = call i64 @build_method_type_directly(i64 %97, i64 %98, i32 %100)
  store i64 %101, i64* %12, align 8
  br label %102

102:                                              ; preds = %96, %75
  %103 = load i64, i64* %12, align 8
  %104 = load i64, i64* %6, align 8
  %105 = call i32 @TYPE_QUALS(i64 %104)
  %106 = load i32, i32* %8, align 4
  %107 = call i64 @cp_build_qualified_type_real(i64 %103, i32 %105, i32 %106)
  store i64 %107, i64* %12, align 8
  %108 = load i64, i64* %12, align 8
  %109 = load i64, i64* %6, align 8
  %110 = call i32 @TYPE_ATTRIBUTES(i64 %109)
  %111 = call i64 @cp_build_type_attribute_variant(i64 %108, i32 %110)
  store i64 %111, i64* %12, align 8
  %112 = load i64, i64* %12, align 8
  store i64 %112, i64* %5, align 8
  br label %113

113:                                              ; preds = %102, %94, %68, %56, %29
  %114 = load i64, i64* %5, align 8
  ret i64 %114
}

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i64 @TYPE_CONTEXT(i64) #1

declare dso_local i64 @tsubst(i64, i64, i32, i64) #1

declare dso_local i64 @TREE_TYPE(i64) #1

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i32 @error(i8*, ...) #1

declare dso_local i64 @tsubst_arg_types(i32, i64, i32, i64) #1

declare dso_local i32 @TYPE_ARG_TYPES(i64) #1

declare dso_local i64 @build_function_type(i64, i64) #1

declare dso_local i64 @TREE_VALUE(i64) #1

declare dso_local i32 @IS_AGGR_TYPE(i64) #1

declare dso_local i64 @build_method_type_directly(i64, i64, i32) #1

declare dso_local i32 @TREE_CHAIN(i64) #1

declare dso_local i64 @cp_build_qualified_type_real(i64, i32, i32) #1

declare dso_local i32 @TYPE_QUALS(i64) #1

declare dso_local i64 @cp_build_type_attribute_variant(i64, i32) #1

declare dso_local i32 @TYPE_ATTRIBUTES(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
