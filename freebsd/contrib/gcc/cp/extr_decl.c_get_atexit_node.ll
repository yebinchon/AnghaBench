; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_decl.c_get_atexit_node.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_decl.c_get_atexit_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (...)* }

@atexit_node = common dso_local global i64 0, align 8
@flag_use_cxa_atexit = common dso_local global i64 0, align 8
@targetm = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@NULL_TREE = common dso_local global i32 0, align 4
@ptr_type_node = common dso_local global i64 0, align 8
@void_list_node = common dso_local global i64 0, align 8
@void_type_node = common dso_local global i32 0, align 4
@integer_type_node = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"__aeabi_atexit\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"__cxa_atexit\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"atexit\00", align 1
@lang_name_c = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 ()* @get_atexit_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @get_atexit_node() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = load i64, i64* @atexit_node, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %0
  %11 = load i64, i64* @atexit_node, align 8
  store i64 %11, i64* %1, align 8
  br label %87

12:                                               ; preds = %0
  %13 = load i64, i64* @flag_use_cxa_atexit, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %62

15:                                               ; preds = %12
  %16 = load i32 (...)*, i32 (...)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @targetm, i32 0, i32 0, i32 0), align 8
  %17 = call i32 (...) %16()
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* @NULL_TREE, align 4
  %19 = load i64, i64* @ptr_type_node, align 8
  %20 = load i64, i64* @void_list_node, align 8
  %21 = call i64 @tree_cons(i32 %18, i64 %19, i64 %20)
  store i64 %21, i64* %3, align 8
  %22 = load i32, i32* @void_type_node, align 4
  %23 = load i64, i64* %3, align 8
  %24 = call i64 @build_function_type(i32 %22, i64 %23)
  store i64 %24, i64* %4, align 8
  %25 = load i64, i64* %4, align 8
  %26 = call i64 @build_pointer_type(i64 %25)
  store i64 %26, i64* %5, align 8
  %27 = load i32, i32* @NULL_TREE, align 4
  %28 = load i64, i64* @ptr_type_node, align 8
  %29 = load i64, i64* @void_list_node, align 8
  %30 = call i64 @tree_cons(i32 %27, i64 %28, i64 %29)
  store i64 %30, i64* %3, align 8
  %31 = load i32, i32* %7, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %42

33:                                               ; preds = %15
  %34 = load i32, i32* @NULL_TREE, align 4
  %35 = load i64, i64* %5, align 8
  %36 = load i64, i64* %3, align 8
  %37 = call i64 @tree_cons(i32 %34, i64 %35, i64 %36)
  store i64 %37, i64* %3, align 8
  %38 = load i32, i32* @NULL_TREE, align 4
  %39 = load i64, i64* @ptr_type_node, align 8
  %40 = load i64, i64* %3, align 8
  %41 = call i64 @tree_cons(i32 %38, i64 %39, i64 %40)
  store i64 %41, i64* %3, align 8
  br label %51

42:                                               ; preds = %15
  %43 = load i32, i32* @NULL_TREE, align 4
  %44 = load i64, i64* @ptr_type_node, align 8
  %45 = load i64, i64* %3, align 8
  %46 = call i64 @tree_cons(i32 %43, i64 %44, i64 %45)
  store i64 %46, i64* %3, align 8
  %47 = load i32, i32* @NULL_TREE, align 4
  %48 = load i64, i64* %5, align 8
  %49 = load i64, i64* %3, align 8
  %50 = call i64 @tree_cons(i32 %47, i64 %48, i64 %49)
  store i64 %50, i64* %3, align 8
  br label %51

51:                                               ; preds = %42, %33
  %52 = load i32, i32* @integer_type_node, align 4
  %53 = load i64, i64* %3, align 8
  %54 = call i64 @build_function_type(i32 %52, i64 %53)
  store i64 %54, i64* %4, align 8
  %55 = load i64, i64* %4, align 8
  %56 = call i64 @build_pointer_type(i64 %55)
  store i64 %56, i64* %5, align 8
  %57 = load i32, i32* %7, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %51
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8** %6, align 8
  br label %61

60:                                               ; preds = %51
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8** %6, align 8
  br label %61

61:                                               ; preds = %60, %59
  br label %75

62:                                               ; preds = %12
  %63 = load i32, i32* @void_type_node, align 4
  %64 = load i64, i64* @void_list_node, align 8
  %65 = call i64 @build_function_type(i32 %63, i64 %64)
  store i64 %65, i64* %4, align 8
  %66 = load i64, i64* %4, align 8
  %67 = call i64 @build_pointer_type(i64 %66)
  store i64 %67, i64* %5, align 8
  %68 = load i32, i32* @NULL_TREE, align 4
  %69 = load i64, i64* %5, align 8
  %70 = load i64, i64* @void_list_node, align 8
  %71 = call i64 @tree_cons(i32 %68, i64 %69, i64 %70)
  store i64 %71, i64* %3, align 8
  %72 = load i32, i32* @integer_type_node, align 4
  %73 = load i64, i64* %3, align 8
  %74 = call i64 @build_function_type(i32 %72, i64 %73)
  store i64 %74, i64* %4, align 8
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8** %6, align 8
  br label %75

75:                                               ; preds = %62, %61
  %76 = load i32, i32* @lang_name_c, align 4
  %77 = call i32 @push_lang_context(i32 %76)
  %78 = load i8*, i8** %6, align 8
  %79 = load i64, i64* %4, align 8
  %80 = call i64 @build_library_fn_ptr(i8* %78, i64 %79)
  store i64 %80, i64* %2, align 8
  %81 = load i64, i64* %2, align 8
  %82 = call i32 @mark_used(i64 %81)
  %83 = call i32 (...) @pop_lang_context()
  %84 = load i64, i64* %2, align 8
  %85 = call i64 @decay_conversion(i64 %84)
  store i64 %85, i64* @atexit_node, align 8
  %86 = load i64, i64* @atexit_node, align 8
  store i64 %86, i64* %1, align 8
  br label %87

87:                                               ; preds = %75, %10
  %88 = load i64, i64* %1, align 8
  ret i64 %88
}

declare dso_local i64 @tree_cons(i32, i64, i64) #1

declare dso_local i64 @build_function_type(i32, i64) #1

declare dso_local i64 @build_pointer_type(i64) #1

declare dso_local i32 @push_lang_context(i32) #1

declare dso_local i64 @build_library_fn_ptr(i8*, i64) #1

declare dso_local i32 @mark_used(i64) #1

declare dso_local i32 @pop_lang_context(...) #1

declare dso_local i64 @decay_conversion(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
