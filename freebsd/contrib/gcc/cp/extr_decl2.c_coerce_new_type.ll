; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_decl2.c_coerce_new_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_decl2.c_coerce_new_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FUNCTION_TYPE = common dso_local global i64 0, align 8
@ptr_type_node = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"%<operator new%> must return type %qT\00", align 1
@void_list_node = common dso_local global i64 0, align 8
@size_type_node = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [64 x i8] c"%<operator new%> takes type %<size_t%> (%qT) as first parameter\00", align 1
@NULL_TREE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @coerce_new_type(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  store i32 0, i32* %3, align 4
  %5 = load i64, i64* %2, align 8
  %6 = call i64 @TYPE_ARG_TYPES(i64 %5)
  store i64 %6, i64* %4, align 8
  %7 = load i64, i64* %2, align 8
  %8 = call i64 @TREE_CODE(i64 %7)
  %9 = load i64, i64* @FUNCTION_TYPE, align 8
  %10 = icmp eq i64 %8, %9
  %11 = zext i1 %10 to i32
  %12 = call i32 @gcc_assert(i32 %11)
  %13 = load i64, i64* %2, align 8
  %14 = call i32 @TREE_TYPE(i64 %13)
  %15 = load i32, i32* @ptr_type_node, align 4
  %16 = call i32 @same_type_p(i32 %14, i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %1
  store i32 1, i32* %3, align 4
  %19 = load i32, i32* @ptr_type_node, align 4
  %20 = call i32 @error(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %19)
  br label %21

21:                                               ; preds = %18, %1
  %22 = load i64, i64* %4, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %34

24:                                               ; preds = %21
  %25 = load i64, i64* %4, align 8
  %26 = load i64, i64* @void_list_node, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %34, label %28

28:                                               ; preds = %24
  %29 = load i64, i64* %4, align 8
  %30 = call i32 @TREE_VALUE(i64 %29)
  %31 = load i32, i32* @size_type_node, align 4
  %32 = call i32 @same_type_p(i32 %30, i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %47, label %34

34:                                               ; preds = %28, %24, %21
  store i32 2, i32* %3, align 4
  %35 = load i64, i64* %4, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %34
  %38 = load i64, i64* %4, align 8
  %39 = load i64, i64* @void_list_node, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %37
  %42 = load i64, i64* %4, align 8
  %43 = call i64 @TREE_CHAIN(i64 %42)
  store i64 %43, i64* %4, align 8
  br label %44

44:                                               ; preds = %41, %37, %34
  %45 = load i32, i32* @size_type_node, align 4
  %46 = call i32 @pedwarn(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.1, i64 0, i64 0), i32 %45)
  br label %47

47:                                               ; preds = %44, %28
  %48 = load i32, i32* %3, align 4
  switch i32 %48, label %61 [
    i32 2, label %49
    i32 1, label %54
  ]

49:                                               ; preds = %47
  %50 = load i32, i32* @NULL_TREE, align 4
  %51 = load i32, i32* @size_type_node, align 4
  %52 = load i64, i64* %4, align 8
  %53 = call i64 @tree_cons(i32 %50, i32 %51, i64 %52)
  store i64 %53, i64* %4, align 8
  br label %54

54:                                               ; preds = %47, %49
  %55 = load i32, i32* @ptr_type_node, align 4
  %56 = load i64, i64* %4, align 8
  %57 = call i32 @build_function_type(i32 %55, i64 %56)
  %58 = load i64, i64* %2, align 8
  %59 = call i32 @TYPE_RAISES_EXCEPTIONS(i64 %58)
  %60 = call i64 @build_exception_variant(i32 %57, i32 %59)
  store i64 %60, i64* %2, align 8
  br label %61

61:                                               ; preds = %47, %54
  br label %62

62:                                               ; preds = %61
  %63 = load i64, i64* %2, align 8
  ret i64 %63
}

declare dso_local i64 @TYPE_ARG_TYPES(i64) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i32 @same_type_p(i32, i32) #1

declare dso_local i32 @TREE_TYPE(i64) #1

declare dso_local i32 @error(i8*, i32) #1

declare dso_local i32 @TREE_VALUE(i64) #1

declare dso_local i64 @TREE_CHAIN(i64) #1

declare dso_local i32 @pedwarn(i8*, i32) #1

declare dso_local i64 @tree_cons(i32, i32, i64) #1

declare dso_local i64 @build_exception_variant(i32, i32) #1

declare dso_local i32 @build_function_type(i32, i64) #1

declare dso_local i32 @TYPE_RAISES_EXCEPTIONS(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
