; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_toplev.c_backend_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_toplev.c_backend_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@debug_info_level = common dso_local global i64 0, align 8
@DINFO_LEVEL_NORMAL = common dso_local global i64 0, align 8
@DINFO_LEVEL_VERBOSE = common dso_local global i64 0, align 8
@flag_test_coverage = common dso_local global i64 0, align 8
@flag_caller_saves = common dso_local global i64 0, align 8
@DINFO_LEVEL_NONE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @backend_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @backend_init() #0 {
  %1 = load i64, i64* @debug_info_level, align 8
  %2 = load i64, i64* @DINFO_LEVEL_NORMAL, align 8
  %3 = icmp eq i64 %1, %2
  br i1 %3, label %11, label %4

4:                                                ; preds = %0
  %5 = load i64, i64* @debug_info_level, align 8
  %6 = load i64, i64* @DINFO_LEVEL_VERBOSE, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %11, label %8

8:                                                ; preds = %4
  %9 = load i64, i64* @flag_test_coverage, align 8
  %10 = icmp ne i64 %9, 0
  br label %11

11:                                               ; preds = %8, %4, %0
  %12 = phi i1 [ true, %4 ], [ true, %0 ], [ %10, %8 ]
  %13 = zext i1 %12 to i32
  %14 = call i32 @init_emit_once(i32 %13)
  %15 = call i32 (...) @init_rtlanal()
  %16 = call i32 (...) @init_regs()
  %17 = call i32 (...) @init_fake_stack_mems()
  %18 = call i32 (...) @init_alias_once()
  %19 = call i32 (...) @init_reload()
  %20 = call i32 (...) @init_varasm_once()
  %21 = call i32 (...) @init_dummy_function_start()
  %22 = call i32 (...) @init_expmed()
  %23 = load i64, i64* @flag_caller_saves, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %11
  %26 = call i32 (...) @init_caller_save()
  br label %27

27:                                               ; preds = %25, %11
  %28 = call i32 (...) @expand_dummy_function_end()
  ret void
}

declare dso_local i32 @init_emit_once(i32) #1

declare dso_local i32 @init_rtlanal(...) #1

declare dso_local i32 @init_regs(...) #1

declare dso_local i32 @init_fake_stack_mems(...) #1

declare dso_local i32 @init_alias_once(...) #1

declare dso_local i32 @init_reload(...) #1

declare dso_local i32 @init_varasm_once(...) #1

declare dso_local i32 @init_dummy_function_start(...) #1

declare dso_local i32 @init_expmed(...) #1

declare dso_local i32 @init_caller_save(...) #1

declare dso_local i32 @expand_dummy_function_end(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
