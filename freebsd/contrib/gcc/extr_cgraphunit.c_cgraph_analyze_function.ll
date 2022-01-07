; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cgraphunit.c_cgraph_analyze_function.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cgraphunit.c_cgraph_analyze_function.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 (i32*)* }
%struct.cgraph_node = type { i32, %struct.TYPE_7__, %struct.TYPE_6__, i32* }
%struct.TYPE_7__ = type { i32, i64, i32 }
%struct.TYPE_6__ = type { i32 }

@current_function_decl = common dso_local global i32* null, align 8
@flag_unit_at_a_time = common dso_local global i32 0, align 4
@lang_hooks = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@flag_really_no_inline = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cgraph_analyze_function(%struct.cgraph_node* %0) #0 {
  %2 = alloca %struct.cgraph_node*, align 8
  %3 = alloca i32*, align 8
  store %struct.cgraph_node* %0, %struct.cgraph_node** %2, align 8
  %4 = load %struct.cgraph_node*, %struct.cgraph_node** %2, align 8
  %5 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %4, i32 0, i32 3
  %6 = load i32*, i32** %5, align 8
  store i32* %6, i32** %3, align 8
  %7 = load i32*, i32** %3, align 8
  store i32* %7, i32** @current_function_decl, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = call i32 @DECL_STRUCT_FUNCTION(i32* %8)
  %10 = call i32 @push_cfun(i32 %9)
  %11 = load %struct.cgraph_node*, %struct.cgraph_node** %2, align 8
  %12 = call i32 @cgraph_lower_function(%struct.cgraph_node* %11)
  %13 = load %struct.cgraph_node*, %struct.cgraph_node** %2, align 8
  %14 = load i32*, i32** %3, align 8
  %15 = call i32 @cgraph_create_edges(%struct.cgraph_node* %13, i32* %14)
  %16 = load i32*, i32** %3, align 8
  %17 = call i64 @tree_inlinable_function_p(i32* %16)
  %18 = load %struct.cgraph_node*, %struct.cgraph_node** %2, align 8
  %19 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 1
  store i64 %17, i64* %20, align 8
  %21 = load i32, i32* @flag_unit_at_a_time, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %29, label %23

23:                                               ; preds = %1
  %24 = load i32*, i32** %3, align 8
  %25 = call i32 @estimate_num_insns(i32* %24)
  %26 = load %struct.cgraph_node*, %struct.cgraph_node** %2, align 8
  %27 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  store i32 %25, i32* %28, align 8
  br label %29

29:                                               ; preds = %23, %1
  %30 = load %struct.cgraph_node*, %struct.cgraph_node** %2, align 8
  %31 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %29
  %36 = load i32 (i32*)*, i32 (i32*)** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @lang_hooks, i32 0, i32 0, i32 0), align 8
  %37 = load i32*, i32** %3, align 8
  %38 = call i32 %36(i32* %37)
  %39 = load %struct.cgraph_node*, %struct.cgraph_node** %2, align 8
  %40 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 2
  store i32 %38, i32* %41, align 8
  br label %42

42:                                               ; preds = %35, %29
  %43 = load %struct.cgraph_node*, %struct.cgraph_node** %2, align 8
  %44 = call i32 @initialize_inline_failed(%struct.cgraph_node* %43)
  %45 = load i64, i64* @flag_really_no_inline, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %57

47:                                               ; preds = %42
  %48 = load %struct.cgraph_node*, %struct.cgraph_node** %2, align 8
  %49 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %57, label %53

53:                                               ; preds = %47
  %54 = load %struct.cgraph_node*, %struct.cgraph_node** %2, align 8
  %55 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 1
  store i64 0, i64* %56, align 8
  br label %57

57:                                               ; preds = %53, %47, %42
  %58 = load %struct.cgraph_node*, %struct.cgraph_node** %2, align 8
  %59 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.cgraph_node*, %struct.cgraph_node** %2, align 8
  %63 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  store i32 %61, i32* %64, align 8
  %65 = load %struct.cgraph_node*, %struct.cgraph_node** %2, align 8
  %66 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %65, i32 0, i32 0
  store i32 1, i32* %66, align 8
  %67 = call i32 (...) @pop_cfun()
  store i32* null, i32** @current_function_decl, align 8
  ret void
}

declare dso_local i32 @push_cfun(i32) #1

declare dso_local i32 @DECL_STRUCT_FUNCTION(i32*) #1

declare dso_local i32 @cgraph_lower_function(%struct.cgraph_node*) #1

declare dso_local i32 @cgraph_create_edges(%struct.cgraph_node*, i32*) #1

declare dso_local i64 @tree_inlinable_function_p(i32*) #1

declare dso_local i32 @estimate_num_insns(i32*) #1

declare dso_local i32 @initialize_inline_failed(%struct.cgraph_node*) #1

declare dso_local i32 @pop_cfun(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
