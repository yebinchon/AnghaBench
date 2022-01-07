; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_call.c_build_java_interface_fn_ref.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_call.c_build_java_interface_fn_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@java_iface_lookup_fn = common dso_local global i64 0, align 8
@NULL_TREE = common dso_local global i32 0, align 4
@ptr_type_node = common dso_local global i64 0, align 8
@java_int_type_node = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"_Jv_LookupInterfaceMethodIdx\00", align 1
@NOT_BUILT_IN = common dso_local global i32 0, align 4
@integer_zero_node = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"class$\00", align 1
@VAR_DECL = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [55 x i8] c"could not find class$ field in java interface type %qT\00", align 1
@error_mark_node = common dso_local global i64 0, align 8
@ADDR_EXPR = common dso_local global i32 0, align 4
@CALL_EXPR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i64)* @build_java_interface_fn_ref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @build_java_interface_fn_ref(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %16 = load i64, i64* @java_iface_lookup_fn, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %36, label %18

18:                                               ; preds = %2
  %19 = call i64 (...) @build_void_list_node()
  store i64 %19, i64* %14, align 8
  %20 = load i32, i32* @NULL_TREE, align 4
  %21 = load i64, i64* @ptr_type_node, align 8
  %22 = load i32, i32* @NULL_TREE, align 4
  %23 = load i64, i64* @ptr_type_node, align 8
  %24 = load i32, i32* @NULL_TREE, align 4
  %25 = load i64, i64* @java_int_type_node, align 8
  %26 = load i64, i64* %14, align 8
  %27 = call i64 @tree_cons(i32 %24, i64 %25, i64 %26)
  %28 = call i64 @tree_cons(i32 %22, i64 %23, i64 %27)
  %29 = call i64 @tree_cons(i32 %20, i64 %21, i64 %28)
  store i64 %29, i64* %15, align 8
  %30 = load i64, i64* @ptr_type_node, align 8
  %31 = load i64, i64* %15, align 8
  %32 = call i32 @build_function_type(i64 %30, i64 %31)
  %33 = load i32, i32* @NOT_BUILT_IN, align 4
  %34 = load i32, i32* @NULL_TREE, align 4
  %35 = call i64 @builtin_function(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %32, i32 0, i32 %33, i32* null, i32 %34)
  store i64 %35, i64* @java_iface_lookup_fn, align 8
  br label %36

36:                                               ; preds = %18, %2
  %37 = load i64, i64* %5, align 8
  %38 = call i32 @build_indirect_ref(i64 %37, i32 0)
  %39 = load i32, i32* @integer_zero_node, align 4
  %40 = call i64 @build_vtbl_ref(i32 %38, i32 %39)
  store i64 %40, i64* %10, align 8
  %41 = load i64, i64* %4, align 8
  %42 = call i64 @DECL_CONTEXT(i64 %41)
  store i64 %42, i64* %11, align 8
  %43 = load i64, i64* %11, align 8
  %44 = call i32 @get_identifier(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %45 = call i64 @lookup_field(i64 %43, i32 %44, i32 0, i32 0)
  store i64 %45, i64* %12, align 8
  %46 = load i64, i64* %12, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %58

48:                                               ; preds = %36
  %49 = load i64, i64* %12, align 8
  %50 = call i64 @TREE_CODE(i64 %49)
  %51 = load i64, i64* @VAR_DECL, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %58, label %53

53:                                               ; preds = %48
  %54 = load i64, i64* %12, align 8
  %55 = call i64 @DECL_CONTEXT(i64 %54)
  %56 = load i64, i64* %11, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %62

58:                                               ; preds = %53, %48, %36
  %59 = load i64, i64* %11, align 8
  %60 = call i32 @error(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0), i64 %59)
  %61 = load i64, i64* @error_mark_node, align 8
  store i64 %61, i64* %3, align 8
  br label %115

62:                                               ; preds = %53
  %63 = load i64, i64* %12, align 8
  %64 = call i64 @build_address(i64 %63)
  store i64 %64, i64* %12, align 8
  %65 = load i64, i64* %11, align 8
  %66 = call i32 @build_pointer_type(i64 %65)
  %67 = load i64, i64* %12, align 8
  %68 = call i64 @convert(i32 %66, i64 %67)
  store i64 %68, i64* %12, align 8
  store i32 1, i32* %13, align 4
  %69 = load i64, i64* %11, align 8
  %70 = call i64 @TYPE_METHODS(i64 %69)
  store i64 %70, i64* %8, align 8
  br label %71

71:                                               ; preds = %87, %62
  %72 = load i64, i64* %8, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %90

74:                                               ; preds = %71
  %75 = load i64, i64* %8, align 8
  %76 = call i32 @DECL_VIRTUAL_P(i64 %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %79, label %78

78:                                               ; preds = %74
  br label %87

79:                                               ; preds = %74
  %80 = load i64, i64* %4, align 8
  %81 = load i64, i64* %8, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %79
  br label %90

84:                                               ; preds = %79
  %85 = load i32, i32* %13, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %13, align 4
  br label %87

87:                                               ; preds = %84, %78
  %88 = load i64, i64* %8, align 8
  %89 = call i64 @TREE_CHAIN(i64 %88)
  store i64 %89, i64* %8, align 8
  br label %71

90:                                               ; preds = %83, %71
  %91 = load i32, i32* @NULL_TREE, align 4
  %92 = load i32, i32* %13, align 4
  %93 = call i64 @build_int_cst(i32 %91, i32 %92)
  store i64 %93, i64* %9, align 8
  %94 = load i32, i32* @NULL_TREE, align 4
  %95 = load i64, i64* %10, align 8
  %96 = load i32, i32* @NULL_TREE, align 4
  %97 = load i64, i64* %12, align 8
  %98 = load i32, i32* @NULL_TREE, align 4
  %99 = load i64, i64* %9, align 8
  %100 = call i64 @build_tree_list(i32 %98, i64 %99)
  %101 = call i64 @tree_cons(i32 %96, i64 %97, i64 %100)
  %102 = call i64 @tree_cons(i32 %94, i64 %95, i64 %101)
  store i64 %102, i64* %6, align 8
  %103 = load i32, i32* @ADDR_EXPR, align 4
  %104 = load i64, i64* @java_iface_lookup_fn, align 8
  %105 = call i64 @TREE_TYPE(i64 %104)
  %106 = call i32 @build_pointer_type(i64 %105)
  %107 = load i64, i64* @java_iface_lookup_fn, align 8
  %108 = call i64 @build1(i32 %103, i32 %106, i64 %107)
  store i64 %108, i64* %7, align 8
  %109 = load i32, i32* @CALL_EXPR, align 4
  %110 = load i64, i64* @ptr_type_node, align 8
  %111 = load i64, i64* %7, align 8
  %112 = load i64, i64* %6, align 8
  %113 = load i32, i32* @NULL_TREE, align 4
  %114 = call i64 @build3(i32 %109, i64 %110, i64 %111, i64 %112, i32 %113)
  store i64 %114, i64* %3, align 8
  br label %115

115:                                              ; preds = %90, %58
  %116 = load i64, i64* %3, align 8
  ret i64 %116
}

declare dso_local i64 @build_void_list_node(...) #1

declare dso_local i64 @tree_cons(i32, i64, i64) #1

declare dso_local i64 @builtin_function(i8*, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @build_function_type(i64, i64) #1

declare dso_local i64 @build_vtbl_ref(i32, i32) #1

declare dso_local i32 @build_indirect_ref(i64, i32) #1

declare dso_local i64 @DECL_CONTEXT(i64) #1

declare dso_local i64 @lookup_field(i64, i32, i32, i32) #1

declare dso_local i32 @get_identifier(i8*) #1

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i32 @error(i8*, i64) #1

declare dso_local i64 @build_address(i64) #1

declare dso_local i64 @convert(i32, i64) #1

declare dso_local i32 @build_pointer_type(i64) #1

declare dso_local i64 @TYPE_METHODS(i64) #1

declare dso_local i32 @DECL_VIRTUAL_P(i64) #1

declare dso_local i64 @TREE_CHAIN(i64) #1

declare dso_local i64 @build_int_cst(i32, i32) #1

declare dso_local i64 @build_tree_list(i32, i64) #1

declare dso_local i64 @build1(i32, i32, i64) #1

declare dso_local i64 @TREE_TYPE(i64) #1

declare dso_local i64 @build3(i32, i64, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
