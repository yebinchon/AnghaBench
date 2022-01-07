; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-inline.c_build_duplicate_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-inline.c_build_duplicate_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.copy_body_data = type { i32, i32, i8*, i8* }

@current_function_decl = common dso_local global i8* null, align 8
@cfun = common dso_local global i32 0, align 4
@splay_tree_compare_pointers = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @build_duplicate_type(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.copy_body_data, align 8
  store i32 %0, i32* %2, align 4
  %4 = call i32 @memset(%struct.copy_body_data* %3, i32 0, i32 24)
  %5 = load i8*, i8** @current_function_decl, align 8
  %6 = getelementptr inbounds %struct.copy_body_data, %struct.copy_body_data* %3, i32 0, i32 3
  store i8* %5, i8** %6, align 8
  %7 = load i8*, i8** @current_function_decl, align 8
  %8 = getelementptr inbounds %struct.copy_body_data, %struct.copy_body_data* %3, i32 0, i32 2
  store i8* %7, i8** %8, align 8
  %9 = load i32, i32* @cfun, align 4
  %10 = getelementptr inbounds %struct.copy_body_data, %struct.copy_body_data* %3, i32 0, i32 1
  store i32 %9, i32* %10, align 4
  %11 = load i32, i32* @splay_tree_compare_pointers, align 4
  %12 = call i32 @splay_tree_new(i32 %11, i32* null, i32* null)
  %13 = getelementptr inbounds %struct.copy_body_data, %struct.copy_body_data* %3, i32 0, i32 0
  store i32 %12, i32* %13, align 8
  %14 = load i32, i32* %2, align 4
  %15 = call i32 @remap_type_1(i32 %14, %struct.copy_body_data* %3)
  store i32 %15, i32* %2, align 4
  %16 = getelementptr inbounds %struct.copy_body_data, %struct.copy_body_data* %3, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @splay_tree_delete(i32 %17)
  %19 = load i32, i32* %2, align 4
  ret i32 %19
}

declare dso_local i32 @memset(%struct.copy_body_data*, i32, i32) #1

declare dso_local i32 @splay_tree_new(i32, i32*, i32*) #1

declare dso_local i32 @remap_type_1(i32, %struct.copy_body_data*) #1

declare dso_local i32 @splay_tree_delete(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
