; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_buildsym.c_start_symtab.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_buildsym.c_start_symtab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.context_stack = type { i32 }

@last_source_file = common dso_local global i8* null, align 8
@last_source_start_addr = common dso_local global i32 0, align 4
@file_symbols = common dso_local global i32* null, align 8
@global_symbols = common dso_local global i32* null, align 8
@within_function = common dso_local global i64 0, align 8
@have_line_numbers = common dso_local global i64 0, align 8
@context_stack = common dso_local global %struct.context_stack* null, align 8
@INITIAL_CONTEXT_STACK_SIZE = common dso_local global i32 0, align 4
@context_stack_size = common dso_local global i32 0, align 4
@context_stack_depth = common dso_local global i64 0, align 8
@subfiles = common dso_local global i32* null, align 8
@current_subfile = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @start_symtab(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i8*, i8** %4, align 8
  store i8* %7, i8** @last_source_file, align 8
  %8 = load i32, i32* %6, align 4
  store i32 %8, i32* @last_source_start_addr, align 4
  store i32* null, i32** @file_symbols, align 8
  store i32* null, i32** @global_symbols, align 8
  store i64 0, i64* @within_function, align 8
  store i64 0, i64* @have_line_numbers, align 8
  %9 = load %struct.context_stack*, %struct.context_stack** @context_stack, align 8
  %10 = icmp eq %struct.context_stack* %9, null
  br i1 %10, label %11, label %19

11:                                               ; preds = %3
  %12 = load i32, i32* @INITIAL_CONTEXT_STACK_SIZE, align 4
  store i32 %12, i32* @context_stack_size, align 4
  %13 = load i32, i32* @context_stack_size, align 4
  %14 = sext i32 %13 to i64
  %15 = mul i64 %14, 4
  %16 = trunc i64 %15 to i32
  %17 = call i64 @xmalloc(i32 %16)
  %18 = inttoptr i64 %17 to %struct.context_stack*
  store %struct.context_stack* %18, %struct.context_stack** @context_stack, align 8
  br label %19

19:                                               ; preds = %11, %3
  store i64 0, i64* @context_stack_depth, align 8
  %20 = call i32 (...) @cp_initialize_namespace()
  store i32* null, i32** @subfiles, align 8
  store i32* null, i32** @current_subfile, align 8
  %21 = load i8*, i8** %4, align 8
  %22 = load i8*, i8** %5, align 8
  %23 = call i32 @start_subfile(i8* %21, i8* %22)
  ret void
}

declare dso_local i64 @xmalloc(i32) #1

declare dso_local i32 @cp_initialize_namespace(...) #1

declare dso_local i32 @start_subfile(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
