; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_macrotab.c_macro_define_object.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_macrotab.c_macro_define_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.macro_source_file = type { %struct.macro_table* }
%struct.macro_table = type { i32 }
%struct.macro_key = type { i32 }
%struct.macro_definition = type { i32 }

@macro_object_like = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @macro_define_object(%struct.macro_source_file* %0, i32 %1, i8* %2, i8* %3) #0 {
  %5 = alloca %struct.macro_source_file*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.macro_table*, align 8
  %10 = alloca %struct.macro_key*, align 8
  %11 = alloca %struct.macro_definition*, align 8
  store %struct.macro_source_file* %0, %struct.macro_source_file** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %12 = load %struct.macro_source_file*, %struct.macro_source_file** %5, align 8
  %13 = getelementptr inbounds %struct.macro_source_file, %struct.macro_source_file* %12, i32 0, i32 0
  %14 = load %struct.macro_table*, %struct.macro_table** %13, align 8
  store %struct.macro_table* %14, %struct.macro_table** %9, align 8
  %15 = load %struct.macro_source_file*, %struct.macro_source_file** %5, align 8
  %16 = load i32, i32* %6, align 4
  %17 = load i8*, i8** %7, align 8
  %18 = load i32, i32* @macro_object_like, align 4
  %19 = load i8*, i8** %8, align 8
  %20 = call %struct.macro_key* @check_for_redefinition(%struct.macro_source_file* %15, i32 %16, i8* %17, i32 %18, i32 0, i32 0, i8* %19)
  store %struct.macro_key* %20, %struct.macro_key** %10, align 8
  %21 = load %struct.macro_key*, %struct.macro_key** %10, align 8
  %22 = icmp ne %struct.macro_key* %21, null
  br i1 %22, label %23, label %31

23:                                               ; preds = %4
  %24 = load %struct.macro_key*, %struct.macro_key** %10, align 8
  %25 = load i8*, i8** %7, align 8
  %26 = load %struct.macro_source_file*, %struct.macro_source_file** %5, align 8
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @key_compare(%struct.macro_key* %24, i8* %25, %struct.macro_source_file* %26, i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %23
  br label %49

31:                                               ; preds = %23, %4
  %32 = load %struct.macro_table*, %struct.macro_table** %9, align 8
  %33 = load i8*, i8** %7, align 8
  %34 = load %struct.macro_source_file*, %struct.macro_source_file** %5, align 8
  %35 = load i32, i32* %6, align 4
  %36 = call %struct.macro_key* @new_macro_key(%struct.macro_table* %32, i8* %33, %struct.macro_source_file* %34, i32 %35)
  store %struct.macro_key* %36, %struct.macro_key** %10, align 8
  %37 = load %struct.macro_table*, %struct.macro_table** %9, align 8
  %38 = load i32, i32* @macro_object_like, align 4
  %39 = load i8*, i8** %8, align 8
  %40 = call %struct.macro_definition* @new_macro_definition(%struct.macro_table* %37, i32 %38, i32 0, i32 0, i8* %39)
  store %struct.macro_definition* %40, %struct.macro_definition** %11, align 8
  %41 = load %struct.macro_table*, %struct.macro_table** %9, align 8
  %42 = getelementptr inbounds %struct.macro_table, %struct.macro_table* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.macro_key*, %struct.macro_key** %10, align 8
  %45 = ptrtoint %struct.macro_key* %44 to i32
  %46 = load %struct.macro_definition*, %struct.macro_definition** %11, align 8
  %47 = ptrtoint %struct.macro_definition* %46 to i32
  %48 = call i32 @splay_tree_insert(i32 %43, i32 %45, i32 %47)
  br label %49

49:                                               ; preds = %31, %30
  ret void
}

declare dso_local %struct.macro_key* @check_for_redefinition(%struct.macro_source_file*, i32, i8*, i32, i32, i32, i8*) #1

declare dso_local i32 @key_compare(%struct.macro_key*, i8*, %struct.macro_source_file*, i32) #1

declare dso_local %struct.macro_key* @new_macro_key(%struct.macro_table*, i8*, %struct.macro_source_file*, i32) #1

declare dso_local %struct.macro_definition* @new_macro_definition(%struct.macro_table*, i32, i32, i32, i8*) #1

declare dso_local i32 @splay_tree_insert(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
