; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gcse.c_bypass_jumps.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gcse.c_bypass_jumps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@current_function_calls_setjmp = common dso_local global i64 0, align 8
@max_gcse_regno = common dso_local global i32 0, align 4
@dump_file = common dso_local global i64 0, align 8
@dump_flags = common dso_local global i32 0, align 4
@n_basic_blocks = common dso_local global i64 0, align 8
@NUM_FIXED_BLOCKS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"jump bypassing disabled\00", align 1
@gcse_obstack = common dso_local global i32 0, align 4
@bytes_used = common dso_local global i32 0, align 4
@MAX_GCSE_PASSES = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [32 x i8] c"BYPASS of %s: %d basic blocks, \00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"%d bytes\0A\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @bypass_jumps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bypass_jumps() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i64, i64* @current_function_calls_setjmp, align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %0
  store i32 0, i32* %1, align 4
  br label %55

6:                                                ; preds = %0
  %7 = call i32 (...) @max_reg_num()
  store i32 %7, i32* @max_gcse_regno, align 4
  %8 = load i64, i64* @dump_file, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %6
  %11 = load i64, i64* @dump_file, align 8
  %12 = load i32, i32* @dump_flags, align 4
  %13 = call i32 @dump_flow_info(i64 %11, i32 %12)
  br label %14

14:                                               ; preds = %10, %6
  %15 = load i64, i64* @n_basic_blocks, align 8
  %16 = load i64, i64* @NUM_FIXED_BLOCKS, align 8
  %17 = add nsw i64 %16, 1
  %18 = icmp sle i64 %15, %17
  br i1 %18, label %23, label %19

19:                                               ; preds = %14
  %20 = call i32 @_(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %21 = call i64 @is_too_expensive(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %19, %14
  store i32 0, i32* %1, align 4
  br label %55

24:                                               ; preds = %19
  %25 = call i32 @gcc_obstack_init(i32* @gcse_obstack)
  store i32 0, i32* @bytes_used, align 4
  %26 = call i32 (...) @init_alias_analysis()
  %27 = load i32, i32* @max_gcse_regno, align 4
  %28 = call i32 @alloc_reg_set_mem(i32 %27)
  %29 = call i32 (...) @compute_sets()
  %30 = call i32 (...) @max_reg_num()
  store i32 %30, i32* @max_gcse_regno, align 4
  %31 = call i32 (...) @alloc_gcse_mem()
  %32 = load i64, i64* @MAX_GCSE_PASSES, align 8
  %33 = add nsw i64 %32, 2
  %34 = call i32 @one_cprop_pass(i64 %33, i32 1, i32 1)
  store i32 %34, i32* %2, align 4
  %35 = call i32 (...) @free_gcse_mem()
  %36 = load i64, i64* @dump_file, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %24
  %39 = load i64, i64* @dump_file, align 8
  %40 = call i8* (...) @current_function_name()
  %41 = load i64, i64* @n_basic_blocks, align 8
  %42 = call i32 (i64, i8*, ...) @fprintf(i64 %39, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i8* %40, i64 %41)
  %43 = load i64, i64* @dump_file, align 8
  %44 = load i32, i32* @bytes_used, align 4
  %45 = call i32 (i64, i8*, ...) @fprintf(i64 %43, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %44)
  br label %46

46:                                               ; preds = %38, %24
  %47 = call i32 @obstack_free(i32* @gcse_obstack, i32* null)
  %48 = call i32 (...) @free_reg_set_mem()
  %49 = call i32 (...) @end_alias_analysis()
  %50 = call i32 (...) @max_reg_num()
  %51 = load i32, i32* @FALSE, align 4
  %52 = load i32, i32* @FALSE, align 4
  %53 = call i32 @allocate_reg_info(i32 %50, i32 %51, i32 %52)
  %54 = load i32, i32* %2, align 4
  store i32 %54, i32* %1, align 4
  br label %55

55:                                               ; preds = %46, %23, %5
  %56 = load i32, i32* %1, align 4
  ret i32 %56
}

declare dso_local i32 @max_reg_num(...) #1

declare dso_local i32 @dump_flow_info(i64, i32) #1

declare dso_local i64 @is_too_expensive(i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @gcc_obstack_init(i32*) #1

declare dso_local i32 @init_alias_analysis(...) #1

declare dso_local i32 @alloc_reg_set_mem(i32) #1

declare dso_local i32 @compute_sets(...) #1

declare dso_local i32 @alloc_gcse_mem(...) #1

declare dso_local i32 @one_cprop_pass(i64, i32, i32) #1

declare dso_local i32 @free_gcse_mem(...) #1

declare dso_local i32 @fprintf(i64, i8*, ...) #1

declare dso_local i8* @current_function_name(...) #1

declare dso_local i32 @obstack_free(i32*, i32*) #1

declare dso_local i32 @free_reg_set_mem(...) #1

declare dso_local i32 @end_alias_analysis(...) #1

declare dso_local i32 @allocate_reg_info(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
