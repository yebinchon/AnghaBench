; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_flow.c_rest_of_handle_life.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_flow.c_rest_of_handle_life.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PROP_FINAL = common dso_local global i32 0, align 4
@optimize = common dso_local global i64 0, align 8
@CLEANUP_EXPENSIVE = common dso_local global i32 0, align 4
@CLEANUP_UPDATE_LIFE = common dso_local global i32 0, align 4
@CLEANUP_LOG_LINKS = common dso_local global i32 0, align 4
@flag_thread_jumps = common dso_local global i64 0, align 8
@CLEANUP_THREADING = common dso_local global i32 0, align 4
@extra_warnings = common dso_local global i64 0, align 8
@current_function_decl = common dso_local global i32 0, align 4
@UPDATE_LIFE_GLOBAL_RM_NOTES = common dso_local global i32 0, align 4
@PROP_LOG_LINKS = common dso_local global i32 0, align 4
@PROP_REG_INFO = common dso_local global i32 0, align 4
@PROP_DEATH_NOTES = common dso_local global i32 0, align 4
@no_new_pseudos = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @rest_of_handle_life to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rest_of_handle_life() #0 {
  %1 = call i32 (...) @regclass_init()
  %2 = load i32, i32* @PROP_FINAL, align 4
  %3 = call i32 @life_analysis(i32 %2)
  %4 = load i64, i64* @optimize, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %21

6:                                                ; preds = %0
  %7 = load i32, i32* @CLEANUP_EXPENSIVE, align 4
  %8 = load i32, i32* @CLEANUP_UPDATE_LIFE, align 4
  %9 = or i32 %7, %8
  %10 = load i32, i32* @CLEANUP_LOG_LINKS, align 4
  %11 = or i32 %9, %10
  %12 = load i64, i64* @flag_thread_jumps, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %6
  %15 = load i32, i32* @CLEANUP_THREADING, align 4
  br label %17

16:                                               ; preds = %6
  br label %17

17:                                               ; preds = %16, %14
  %18 = phi i32 [ %15, %14 ], [ 0, %16 ]
  %19 = or i32 %11, %18
  %20 = call i32 @cleanup_cfg(i32 %19)
  br label %21

21:                                               ; preds = %17, %0
  %22 = load i64, i64* @extra_warnings, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %21
  %25 = load i32, i32* @current_function_decl, align 4
  %26 = call i32 @DECL_INITIAL(i32 %25)
  %27 = call i32 @setjmp_vars_warning(i32 %26)
  %28 = call i32 (...) @setjmp_args_warning()
  br label %29

29:                                               ; preds = %24, %21
  %30 = load i64, i64* @optimize, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %45

32:                                               ; preds = %29
  %33 = call i64 (...) @initialize_uninitialized_subregs()
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %32
  %36 = call i32 (...) @allocate_reg_life_data()
  %37 = load i32, i32* @UPDATE_LIFE_GLOBAL_RM_NOTES, align 4
  %38 = load i32, i32* @PROP_LOG_LINKS, align 4
  %39 = load i32, i32* @PROP_REG_INFO, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @PROP_DEATH_NOTES, align 4
  %42 = or i32 %40, %41
  %43 = call i32 @update_life_info(i32* null, i32 %37, i32 %42)
  br label %44

44:                                               ; preds = %35, %32
  br label %45

45:                                               ; preds = %44, %29
  store i32 1, i32* @no_new_pseudos, align 4
  ret i32 0
}

declare dso_local i32 @regclass_init(...) #1

declare dso_local i32 @life_analysis(i32) #1

declare dso_local i32 @cleanup_cfg(i32) #1

declare dso_local i32 @setjmp_vars_warning(i32) #1

declare dso_local i32 @DECL_INITIAL(i32) #1

declare dso_local i32 @setjmp_args_warning(...) #1

declare dso_local i64 @initialize_uninitialized_subregs(...) #1

declare dso_local i32 @allocate_reg_life_data(...) #1

declare dso_local i32 @update_life_info(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
