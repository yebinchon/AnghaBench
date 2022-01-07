; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_decl.c_finish_case_label.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_decl.c_finish_case_label.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.cp_binding_level = type { i64, i64, %struct.cp_binding_level* }

@processing_template_decl = common dso_local global i64 0, align 8
@LABEL_DECL = common dso_local global i32 0, align 4
@NULL_TREE = common dso_local global i32 0, align 4
@switch_stack = common dso_local global %struct.TYPE_2__* null, align 8
@TREE_LIST = common dso_local global i64 0, align 8
@error_mark_node = common dso_local global i64 0, align 8
@current_binding_level = common dso_local global %struct.cp_binding_level* null, align 8
@sk_function_parms = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @finish_case_label(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.cp_binding_level*, align 8
  %9 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load i64, i64* @processing_template_decl, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %22

12:                                               ; preds = %2
  %13 = load i32, i32* @LABEL_DECL, align 4
  %14 = load i32, i32* @NULL_TREE, align 4
  %15 = load i32, i32* @NULL_TREE, align 4
  %16 = call i64 @build_decl(i32 %13, i32 %14, i32 %15)
  store i64 %16, i64* %9, align 8
  %17 = load i64, i64* %4, align 8
  %18 = load i64, i64* %5, align 8
  %19 = load i64, i64* %9, align 8
  %20 = call i32 @build_case_label(i64 %17, i64 %18, i64 %19)
  %21 = call i64 @add_stmt(i32 %20)
  store i64 %21, i64* %3, align 8
  br label %71

22:                                               ; preds = %2
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** @switch_stack, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @SWITCH_STMT_COND(i32 %25)
  store i64 %26, i64* %6, align 8
  %27 = load i64, i64* %6, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %22
  %30 = load i64, i64* %6, align 8
  %31 = call i64 @TREE_CODE(i64 %30)
  %32 = load i64, i64* @TREE_LIST, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = load i64, i64* %6, align 8
  %36 = call i64 @TREE_VALUE(i64 %35)
  store i64 %36, i64* %6, align 8
  br label %37

37:                                               ; preds = %34, %29, %22
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** @switch_stack, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @check_switch_goto(i32 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %37
  %44 = load i64, i64* @error_mark_node, align 8
  store i64 %44, i64* %3, align 8
  br label %71

45:                                               ; preds = %37
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** @switch_stack, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i64, i64* %6, align 8
  %50 = load i64, i64* %6, align 8
  %51 = call i32 @TREE_TYPE(i64 %50)
  %52 = load i64, i64* %4, align 8
  %53 = load i64, i64* %5, align 8
  %54 = call i64 @c_add_case_label(i32 %48, i64 %49, i32 %51, i64 %52, i64 %53)
  store i64 %54, i64* %7, align 8
  %55 = load %struct.cp_binding_level*, %struct.cp_binding_level** @current_binding_level, align 8
  store %struct.cp_binding_level* %55, %struct.cp_binding_level** %8, align 8
  br label %56

56:                                               ; preds = %65, %45
  %57 = load %struct.cp_binding_level*, %struct.cp_binding_level** %8, align 8
  %58 = getelementptr inbounds %struct.cp_binding_level, %struct.cp_binding_level* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @sk_function_parms, align 8
  %61 = icmp ne i64 %59, %60
  br i1 %61, label %62, label %69

62:                                               ; preds = %56
  %63 = load %struct.cp_binding_level*, %struct.cp_binding_level** %8, align 8
  %64 = getelementptr inbounds %struct.cp_binding_level, %struct.cp_binding_level* %63, i32 0, i32 1
  store i64 0, i64* %64, align 8
  br label %65

65:                                               ; preds = %62
  %66 = load %struct.cp_binding_level*, %struct.cp_binding_level** %8, align 8
  %67 = getelementptr inbounds %struct.cp_binding_level, %struct.cp_binding_level* %66, i32 0, i32 2
  %68 = load %struct.cp_binding_level*, %struct.cp_binding_level** %67, align 8
  store %struct.cp_binding_level* %68, %struct.cp_binding_level** %8, align 8
  br label %56

69:                                               ; preds = %56
  %70 = load i64, i64* %7, align 8
  store i64 %70, i64* %3, align 8
  br label %71

71:                                               ; preds = %69, %43, %12
  %72 = load i64, i64* %3, align 8
  ret i64 %72
}

declare dso_local i64 @build_decl(i32, i32, i32) #1

declare dso_local i64 @add_stmt(i32) #1

declare dso_local i32 @build_case_label(i64, i64, i64) #1

declare dso_local i64 @SWITCH_STMT_COND(i32) #1

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i64 @TREE_VALUE(i64) #1

declare dso_local i32 @check_switch_goto(i32) #1

declare dso_local i64 @c_add_case_label(i32, i64, i32, i64, i64) #1

declare dso_local i32 @TREE_TYPE(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
