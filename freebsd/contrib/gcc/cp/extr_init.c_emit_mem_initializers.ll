; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_init.c_emit_mem_initializers.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_init.c_emit_mem_initializers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@current_class_type = common dso_local global i32 0, align 4
@in_base_initializer = common dso_local global i32 0, align 4
@FIELD_DECL = common dso_local global i64 0, align 8
@extra_warnings = common dso_local global i64 0, align 8
@current_function_decl = common dso_local global i32 0, align 4
@OPT_Wextra = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [75 x i8] c"%Jbase class %q#T should be explicitly initialized in the copy constructor\00", align 1
@void_type_node = common dso_local global i64 0, align 8
@NULL_TREE = common dso_local global i64 0, align 8
@PLUS_EXPR = common dso_local global i32 0, align 4
@current_class_ptr = common dso_local global i32 0, align 4
@LOOKUP_NORMAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @emit_mem_initializers(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %6 = load i32, i32* @current_class_type, align 4
  %7 = call i32 @COMPLETE_TYPE_P(i32 %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %96

10:                                               ; preds = %1
  %11 = load i32, i32* @current_class_type, align 4
  %12 = load i64, i64* %2, align 8
  %13 = call i64 @sort_mem_initializers(i32 %11, i64 %12)
  store i64 %13, i64* %2, align 8
  store i32 1, i32* @in_base_initializer, align 4
  br label %14

14:                                               ; preds = %79, %10
  %15 = load i64, i64* %2, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %14
  %18 = load i64, i64* %2, align 8
  %19 = call i64 @TREE_PURPOSE(i64 %18)
  %20 = call i64 @TREE_CODE(i64 %19)
  %21 = load i64, i64* @FIELD_DECL, align 8
  %22 = icmp ne i64 %20, %21
  br label %23

23:                                               ; preds = %17, %14
  %24 = phi i1 [ false, %14 ], [ %22, %17 ]
  br i1 %24, label %25, label %82

25:                                               ; preds = %23
  %26 = load i64, i64* %2, align 8
  %27 = call i64 @TREE_PURPOSE(i64 %26)
  store i64 %27, i64* %3, align 8
  %28 = load i64, i64* %2, align 8
  %29 = call i64 @TREE_VALUE(i64 %28)
  store i64 %29, i64* %4, align 8
  %30 = load i64, i64* @extra_warnings, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %50

32:                                               ; preds = %25
  %33 = load i64, i64* %4, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %50, label %35

35:                                               ; preds = %32
  %36 = load i32, i32* @current_function_decl, align 4
  %37 = call i64 @DECL_COPY_CONSTRUCTOR_P(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %50

39:                                               ; preds = %35
  %40 = load i64, i64* %3, align 8
  %41 = call i32 @BINFO_TYPE(i64 %40)
  %42 = call i64 @TYPE_NEEDS_CONSTRUCTING(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %39
  %45 = load i32, i32* @OPT_Wextra, align 4
  %46 = load i32, i32* @current_function_decl, align 4
  %47 = load i64, i64* %3, align 8
  %48 = call i32 @BINFO_TYPE(i64 %47)
  %49 = call i32 @warning(i32 %45, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str, i64 0, i64 0), i32 %46, i32 %48)
  br label %50

50:                                               ; preds = %44, %39, %35, %32, %25
  %51 = load i64, i64* %4, align 8
  %52 = load i64, i64* @void_type_node, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %50
  %55 = load i64, i64* @NULL_TREE, align 8
  store i64 %55, i64* %4, align 8
  br label %56

56:                                               ; preds = %54, %50
  %57 = load i64, i64* %3, align 8
  %58 = call i64 @BINFO_VIRTUAL_P(i64 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %56
  %61 = load i64, i64* %3, align 8
  %62 = load i64, i64* %4, align 8
  %63 = call i32 @construct_virtual_base(i64 %61, i64 %62)
  br label %79

64:                                               ; preds = %56
  %65 = load i32, i32* @PLUS_EXPR, align 4
  %66 = load i32, i32* @current_class_ptr, align 4
  %67 = load i64, i64* %3, align 8
  %68 = call i64 @build_base_path(i32 %65, i32 %66, i64 %67, i32 1)
  store i64 %68, i64* %5, align 8
  %69 = load i64, i64* %3, align 8
  %70 = load i64, i64* @NULL_TREE, align 8
  %71 = load i64, i64* %5, align 8
  %72 = call i32 @build_indirect_ref(i64 %71, i32* null)
  %73 = load i64, i64* %4, align 8
  %74 = load i32, i32* @LOOKUP_NORMAL, align 4
  %75 = call i32 @expand_aggr_init_1(i64 %69, i64 %70, i32 %72, i64 %73, i32 %74)
  %76 = load i64, i64* %3, align 8
  %77 = load i64, i64* @NULL_TREE, align 8
  %78 = call i32 @expand_cleanup_for_base(i64 %76, i64 %77)
  br label %79

79:                                               ; preds = %64, %60
  %80 = load i64, i64* %2, align 8
  %81 = call i64 @TREE_CHAIN(i64 %80)
  store i64 %81, i64* %2, align 8
  br label %14

82:                                               ; preds = %23
  store i32 0, i32* @in_base_initializer, align 4
  %83 = load i32, i32* @current_class_ptr, align 4
  %84 = call i32 @initialize_vtbl_ptrs(i32 %83)
  br label %85

85:                                               ; preds = %88, %82
  %86 = load i64, i64* %2, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %96

88:                                               ; preds = %85
  %89 = load i64, i64* %2, align 8
  %90 = call i64 @TREE_PURPOSE(i64 %89)
  %91 = load i64, i64* %2, align 8
  %92 = call i64 @TREE_VALUE(i64 %91)
  %93 = call i32 @perform_member_init(i64 %90, i64 %92)
  %94 = load i64, i64* %2, align 8
  %95 = call i64 @TREE_CHAIN(i64 %94)
  store i64 %95, i64* %2, align 8
  br label %85

96:                                               ; preds = %9, %85
  ret void
}

declare dso_local i32 @COMPLETE_TYPE_P(i32) #1

declare dso_local i64 @sort_mem_initializers(i32, i64) #1

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i64 @TREE_PURPOSE(i64) #1

declare dso_local i64 @TREE_VALUE(i64) #1

declare dso_local i64 @DECL_COPY_CONSTRUCTOR_P(i32) #1

declare dso_local i64 @TYPE_NEEDS_CONSTRUCTING(i32) #1

declare dso_local i32 @BINFO_TYPE(i64) #1

declare dso_local i32 @warning(i32, i8*, i32, i32) #1

declare dso_local i64 @BINFO_VIRTUAL_P(i64) #1

declare dso_local i32 @construct_virtual_base(i64, i64) #1

declare dso_local i64 @build_base_path(i32, i32, i64, i32) #1

declare dso_local i32 @expand_aggr_init_1(i64, i64, i32, i64, i32) #1

declare dso_local i32 @build_indirect_ref(i64, i32*) #1

declare dso_local i32 @expand_cleanup_for_base(i64, i64) #1

declare dso_local i64 @TREE_CHAIN(i64) #1

declare dso_local i32 @initialize_vtbl_ptrs(i32) #1

declare dso_local i32 @perform_member_init(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
