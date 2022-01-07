; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_macrotab.c_macro_define_function.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_macrotab.c_macro_define_function.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.macro_source_file = type { %struct.macro_table* }
%struct.macro_table = type { i32 }
%struct.macro_key = type { i32 }
%struct.macro_definition = type { i32 }

@macro_function_like = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @macro_define_function(%struct.macro_source_file* %0, i32 %1, i8* %2, i32 %3, i8** %4, i8* %5) #0 {
  %7 = alloca %struct.macro_source_file*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8**, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.macro_table*, align 8
  %14 = alloca %struct.macro_key*, align 8
  %15 = alloca %struct.macro_definition*, align 8
  store %struct.macro_source_file* %0, %struct.macro_source_file** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i8** %4, i8*** %11, align 8
  store i8* %5, i8** %12, align 8
  %16 = load %struct.macro_source_file*, %struct.macro_source_file** %7, align 8
  %17 = getelementptr inbounds %struct.macro_source_file, %struct.macro_source_file* %16, i32 0, i32 0
  %18 = load %struct.macro_table*, %struct.macro_table** %17, align 8
  store %struct.macro_table* %18, %struct.macro_table** %13, align 8
  %19 = load %struct.macro_source_file*, %struct.macro_source_file** %7, align 8
  %20 = load i32, i32* %8, align 4
  %21 = load i8*, i8** %9, align 8
  %22 = load i32, i32* @macro_function_like, align 4
  %23 = load i32, i32* %10, align 4
  %24 = load i8**, i8*** %11, align 8
  %25 = load i8*, i8** %12, align 8
  %26 = call %struct.macro_key* @check_for_redefinition(%struct.macro_source_file* %19, i32 %20, i8* %21, i32 %22, i32 %23, i8** %24, i8* %25)
  store %struct.macro_key* %26, %struct.macro_key** %14, align 8
  %27 = load %struct.macro_key*, %struct.macro_key** %14, align 8
  %28 = icmp ne %struct.macro_key* %27, null
  br i1 %28, label %29, label %37

29:                                               ; preds = %6
  %30 = load %struct.macro_key*, %struct.macro_key** %14, align 8
  %31 = load i8*, i8** %9, align 8
  %32 = load %struct.macro_source_file*, %struct.macro_source_file** %7, align 8
  %33 = load i32, i32* %8, align 4
  %34 = call i32 @key_compare(%struct.macro_key* %30, i8* %31, %struct.macro_source_file* %32, i32 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %29
  br label %57

37:                                               ; preds = %29, %6
  %38 = load %struct.macro_table*, %struct.macro_table** %13, align 8
  %39 = load i8*, i8** %9, align 8
  %40 = load %struct.macro_source_file*, %struct.macro_source_file** %7, align 8
  %41 = load i32, i32* %8, align 4
  %42 = call %struct.macro_key* @new_macro_key(%struct.macro_table* %38, i8* %39, %struct.macro_source_file* %40, i32 %41)
  store %struct.macro_key* %42, %struct.macro_key** %14, align 8
  %43 = load %struct.macro_table*, %struct.macro_table** %13, align 8
  %44 = load i32, i32* @macro_function_like, align 4
  %45 = load i32, i32* %10, align 4
  %46 = load i8**, i8*** %11, align 8
  %47 = load i8*, i8** %12, align 8
  %48 = call %struct.macro_definition* @new_macro_definition(%struct.macro_table* %43, i32 %44, i32 %45, i8** %46, i8* %47)
  store %struct.macro_definition* %48, %struct.macro_definition** %15, align 8
  %49 = load %struct.macro_table*, %struct.macro_table** %13, align 8
  %50 = getelementptr inbounds %struct.macro_table, %struct.macro_table* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.macro_key*, %struct.macro_key** %14, align 8
  %53 = ptrtoint %struct.macro_key* %52 to i32
  %54 = load %struct.macro_definition*, %struct.macro_definition** %15, align 8
  %55 = ptrtoint %struct.macro_definition* %54 to i32
  %56 = call i32 @splay_tree_insert(i32 %51, i32 %53, i32 %55)
  br label %57

57:                                               ; preds = %37, %36
  ret void
}

declare dso_local %struct.macro_key* @check_for_redefinition(%struct.macro_source_file*, i32, i8*, i32, i32, i8**, i8*) #1

declare dso_local i32 @key_compare(%struct.macro_key*, i8*, %struct.macro_source_file*, i32) #1

declare dso_local %struct.macro_key* @new_macro_key(%struct.macro_table*, i8*, %struct.macro_source_file*, i32) #1

declare dso_local %struct.macro_definition* @new_macro_definition(%struct.macro_table*, i32, i32, i8**, i8*) #1

declare dso_local i32 @splay_tree_insert(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
