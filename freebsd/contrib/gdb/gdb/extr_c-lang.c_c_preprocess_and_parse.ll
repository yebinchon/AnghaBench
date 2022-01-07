; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_c-lang.c_c_preprocess_and_parse.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_c-lang.c_c_preprocess_and_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.macro_scope = type { i32 }
%struct.cleanup = type { i32 }

@free_current_contents = common dso_local global i32 0, align 4
@expression_context_block = common dso_local global i64 0, align 8
@expression_context_pc = common dso_local global i32 0, align 4
@standard_macro_lookup = common dso_local global i32 0, align 4
@expression_macro_lookup_func = common dso_local global i32 0, align 4
@expression_macro_lookup_baton = common dso_local global i8* null, align 8
@null_macro_lookup = common dso_local global i32 0, align 4
@macro_original_text = common dso_local global i32 0, align 4
@scan_macro_cleanup = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @c_preprocess_and_parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @c_preprocess_and_parse() #0 {
  %1 = alloca %struct.macro_scope*, align 8
  %2 = alloca %struct.cleanup*, align 8
  %3 = alloca i32, align 4
  store %struct.macro_scope* null, %struct.macro_scope** %1, align 8
  %4 = load i32, i32* @free_current_contents, align 4
  %5 = call %struct.cleanup* @make_cleanup(i32 %4, %struct.macro_scope** %1)
  store %struct.cleanup* %5, %struct.cleanup** %2, align 8
  %6 = load i64, i64* @expression_context_block, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %0
  %9 = load i32, i32* @expression_context_pc, align 4
  %10 = call i32 @find_pc_line(i32 %9, i32 0)
  %11 = call %struct.macro_scope* @sal_macro_scope(i32 %10)
  store %struct.macro_scope* %11, %struct.macro_scope** %1, align 8
  br label %14

12:                                               ; preds = %0
  %13 = call %struct.macro_scope* (...) @default_macro_scope()
  store %struct.macro_scope* %13, %struct.macro_scope** %1, align 8
  br label %14

14:                                               ; preds = %12, %8
  %15 = load %struct.macro_scope*, %struct.macro_scope** %1, align 8
  %16 = icmp ne %struct.macro_scope* %15, null
  br i1 %16, label %17, label %21

17:                                               ; preds = %14
  %18 = load i32, i32* @standard_macro_lookup, align 4
  store i32 %18, i32* @expression_macro_lookup_func, align 4
  %19 = load %struct.macro_scope*, %struct.macro_scope** %1, align 8
  %20 = bitcast %struct.macro_scope* %19 to i8*
  store i8* %20, i8** @expression_macro_lookup_baton, align 8
  br label %23

21:                                               ; preds = %14
  %22 = load i32, i32* @null_macro_lookup, align 4
  store i32 %22, i32* @expression_macro_lookup_func, align 4
  store i8* null, i8** @expression_macro_lookup_baton, align 8
  br label %23

23:                                               ; preds = %21, %17
  %24 = load i32, i32* @macro_original_text, align 4
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  %28 = call i32 @gdb_assert(i32 %27)
  %29 = load i32, i32* @scan_macro_cleanup, align 4
  %30 = call %struct.cleanup* @make_cleanup(i32 %29, %struct.macro_scope** null)
  %31 = call i32 (...) @c_parse()
  store i32 %31, i32* %3, align 4
  %32 = load %struct.cleanup*, %struct.cleanup** %2, align 8
  %33 = call i32 @do_cleanups(%struct.cleanup* %32)
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local %struct.cleanup* @make_cleanup(i32, %struct.macro_scope**) #1

declare dso_local %struct.macro_scope* @sal_macro_scope(i32) #1

declare dso_local i32 @find_pc_line(i32, i32) #1

declare dso_local %struct.macro_scope* @default_macro_scope(...) #1

declare dso_local i32 @gdb_assert(i32) #1

declare dso_local i32 @c_parse(...) #1

declare dso_local i32 @do_cleanups(%struct.cleanup*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
