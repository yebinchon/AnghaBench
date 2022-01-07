; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_macrotab.c_new_macro_table.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_macrotab.c_new_macro_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.macro_table = type { i32, i32*, %struct.bcache*, %struct.obstack* }
%struct.obstack = type { i32 }
%struct.bcache = type { i32 }

@macro_tree_compare = common dso_local global i32 0, align 4
@macro_tree_delete_key = common dso_local global i64 0, align 8
@macro_tree_delete_value = common dso_local global i64 0, align 8
@macro_alloc = common dso_local global i64 0, align 8
@macro_free = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.macro_table* @new_macro_table(%struct.obstack* %0, %struct.bcache* %1) #0 {
  %3 = alloca %struct.obstack*, align 8
  %4 = alloca %struct.bcache*, align 8
  %5 = alloca %struct.macro_table*, align 8
  store %struct.obstack* %0, %struct.obstack** %3, align 8
  store %struct.bcache* %1, %struct.bcache** %4, align 8
  %6 = load %struct.obstack*, %struct.obstack** %3, align 8
  %7 = icmp ne %struct.obstack* %6, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = load %struct.obstack*, %struct.obstack** %3, align 8
  %10 = call %struct.macro_table* @obstack_alloc(%struct.obstack* %9, i32 32)
  store %struct.macro_table* %10, %struct.macro_table** %5, align 8
  br label %13

11:                                               ; preds = %2
  %12 = call %struct.macro_table* @xmalloc(i32 32)
  store %struct.macro_table* %12, %struct.macro_table** %5, align 8
  br label %13

13:                                               ; preds = %11, %8
  %14 = load %struct.macro_table*, %struct.macro_table** %5, align 8
  %15 = call i32 @memset(%struct.macro_table* %14, i32 0, i32 32)
  %16 = load %struct.obstack*, %struct.obstack** %3, align 8
  %17 = load %struct.macro_table*, %struct.macro_table** %5, align 8
  %18 = getelementptr inbounds %struct.macro_table, %struct.macro_table* %17, i32 0, i32 3
  store %struct.obstack* %16, %struct.obstack** %18, align 8
  %19 = load %struct.bcache*, %struct.bcache** %4, align 8
  %20 = load %struct.macro_table*, %struct.macro_table** %5, align 8
  %21 = getelementptr inbounds %struct.macro_table, %struct.macro_table* %20, i32 0, i32 2
  store %struct.bcache* %19, %struct.bcache** %21, align 8
  %22 = load %struct.macro_table*, %struct.macro_table** %5, align 8
  %23 = getelementptr inbounds %struct.macro_table, %struct.macro_table* %22, i32 0, i32 1
  store i32* null, i32** %23, align 8
  %24 = load i32, i32* @macro_tree_compare, align 4
  %25 = load i64, i64* @macro_tree_delete_key, align 8
  %26 = trunc i64 %25 to i32
  %27 = load i64, i64* @macro_tree_delete_value, align 8
  %28 = trunc i64 %27 to i32
  %29 = load i64, i64* @macro_alloc, align 8
  %30 = trunc i64 %29 to i32
  %31 = load i64, i64* @macro_free, align 8
  %32 = trunc i64 %31 to i32
  %33 = load %struct.macro_table*, %struct.macro_table** %5, align 8
  %34 = call i32 @splay_tree_new_with_allocator(i32 %24, i32 %26, i32 %28, i32 %30, i32 %32, %struct.macro_table* %33)
  %35 = load %struct.macro_table*, %struct.macro_table** %5, align 8
  %36 = getelementptr inbounds %struct.macro_table, %struct.macro_table* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  %37 = load %struct.macro_table*, %struct.macro_table** %5, align 8
  ret %struct.macro_table* %37
}

declare dso_local %struct.macro_table* @obstack_alloc(%struct.obstack*, i32) #1

declare dso_local %struct.macro_table* @xmalloc(i32) #1

declare dso_local i32 @memset(%struct.macro_table*, i32, i32) #1

declare dso_local i32 @splay_tree_new_with_allocator(i32, i32, i32, i32, i32, %struct.macro_table*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
