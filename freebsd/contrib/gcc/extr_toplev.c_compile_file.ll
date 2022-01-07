; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_toplev.c_compile_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_toplev.c_compile_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_7__, i32 (...)*, i32 (i32)* }
%struct.TYPE_7__ = type { i32 (...)* }
%struct.TYPE_10__ = type { i32 (i32)* }
%struct.TYPE_8__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 (...)* }

@main_input_filename = common dso_local global i32 0, align 4
@aux_base_name = common dso_local global i32 0, align 4
@TV_PARSE = common dso_local global i32 0, align 4
@lang_hooks = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@set_yydebug = common dso_local global i32 0, align 4
@flag_syntax_only = common dso_local global i64 0, align 8
@errorcount = common dso_local global i64 0, align 8
@sorrycount = common dso_local global i64 0, align 8
@flag_mudflap = common dso_local global i64 0, align 8
@TV_SYMOUT = common dso_local global i32 0, align 4
@debug_hooks = common dso_local global %struct.TYPE_10__* null, align 8
@targetm = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@IDENT_ASM_OP = common dso_local global i8* null, align 8
@asm_out_file = common dso_local global i32 0, align 4
@flag_no_ident = common dso_local global i32 0, align 4
@version_string = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @compile_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @compile_file() #0 {
  %1 = call i32 (...) @init_cgraph()
  %2 = load i32, i32* @main_input_filename, align 4
  %3 = call i32 @init_final(i32 %2)
  %4 = load i32, i32* @aux_base_name, align 4
  %5 = call i32 @coverage_init(i32 %4)
  %6 = load i32, i32* @TV_PARSE, align 4
  %7 = call i32 @timevar_push(i32 %6)
  %8 = load i32 (i32)*, i32 (i32)** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @lang_hooks, i32 0, i32 2), align 8
  %9 = load i32, i32* @set_yydebug, align 4
  %10 = call i32 %8(i32 %9)
  %11 = load i32 (...)*, i32 (...)** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @lang_hooks, i32 0, i32 1), align 8
  %12 = call i32 (...) %11()
  %13 = load i32, i32* @TV_PARSE, align 4
  %14 = call i32 @timevar_pop(i32 %13)
  %15 = load i64, i64* @flag_syntax_only, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %0
  %18 = load i64, i64* @errorcount, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %17
  %21 = load i64, i64* @sorrycount, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %20, %17, %0
  br label %51

24:                                               ; preds = %20
  %25 = load i32 (...)*, i32 (...)** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @lang_hooks, i32 0, i32 0, i32 0), align 8
  %26 = call i32 (...) %25()
  %27 = call i32 (...) @cgraph_varpool_assemble_pending_decls()
  %28 = call i32 (...) @finish_aliases_2()
  %29 = call i32 (...) @coverage_finish()
  %30 = load i64, i64* @flag_mudflap, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %24
  %33 = call i32 (...) @mudflap_finish_file()
  br label %34

34:                                               ; preds = %32, %24
  %35 = call i32 (...) @output_shared_constant_pool()
  %36 = call i32 (...) @output_object_blocks()
  %37 = call i32 (...) @weak_finish()
  %38 = load i32, i32* @TV_SYMOUT, align 4
  %39 = call i32 @timevar_push(i32 %38)
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** @debug_hooks, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 0
  %42 = load i32 (i32)*, i32 (i32)** %41, align 8
  %43 = load i32, i32* @main_input_filename, align 4
  %44 = call i32 %42(i32 %43)
  %45 = load i32, i32* @TV_SYMOUT, align 4
  %46 = call i32 @timevar_pop(i32 %45)
  %47 = call i32 (...) @dw2_output_indirect_constants()
  %48 = call i32 (...) @process_pending_assemble_externals()
  %49 = load i32 (...)*, i32 (...)** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @targetm, i32 0, i32 0, i32 0), align 8
  %50 = call i32 (...) %49()
  br label %51

51:                                               ; preds = %34, %23
  ret void
}

declare dso_local i32 @init_cgraph(...) #1

declare dso_local i32 @init_final(i32) #1

declare dso_local i32 @coverage_init(i32) #1

declare dso_local i32 @timevar_push(i32) #1

declare dso_local i32 @timevar_pop(i32) #1

declare dso_local i32 @cgraph_varpool_assemble_pending_decls(...) #1

declare dso_local i32 @finish_aliases_2(...) #1

declare dso_local i32 @coverage_finish(...) #1

declare dso_local i32 @mudflap_finish_file(...) #1

declare dso_local i32 @output_shared_constant_pool(...) #1

declare dso_local i32 @output_object_blocks(...) #1

declare dso_local i32 @weak_finish(...) #1

declare dso_local i32 @dw2_output_indirect_constants(...) #1

declare dso_local i32 @process_pending_assemble_externals(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
