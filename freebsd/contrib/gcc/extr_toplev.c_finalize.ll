; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_toplev.c_finalize.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_toplev.c_finalize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (...)* }

@flag_gen_aux_info = common dso_local global i64 0, align 8
@aux_info_file = common dso_local global i64 0, align 8
@errorcount = common dso_local global i64 0, align 8
@aux_info_file_name = common dso_local global i32 0, align 4
@asm_out_file = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"error writing to %s: %m\00", align 1
@asm_file_name = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"error closing %s: %m\00", align 1
@mem_report = common dso_local global i64 0, align 8
@lang_hooks = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @finalize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @finalize() #0 {
  %1 = load i64, i64* @flag_gen_aux_info, align 8
  %2 = icmp ne i64 %1, 0
  br i1 %2, label %3, label %12

3:                                                ; preds = %0
  %4 = load i64, i64* @aux_info_file, align 8
  %5 = call i64 @fclose(i64 %4)
  %6 = load i64, i64* @errorcount, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %3
  %9 = load i32, i32* @aux_info_file_name, align 4
  %10 = call i32 @unlink(i32 %9)
  br label %11

11:                                               ; preds = %8, %3
  br label %12

12:                                               ; preds = %11, %0
  %13 = load i64, i64* @asm_out_file, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %30

15:                                               ; preds = %12
  %16 = load i64, i64* @asm_out_file, align 8
  %17 = call i64 @ferror(i64 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %15
  %20 = load i32, i32* @asm_file_name, align 4
  %21 = call i32 @fatal_error(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %20)
  br label %22

22:                                               ; preds = %19, %15
  %23 = load i64, i64* @asm_out_file, align 8
  %24 = call i64 @fclose(i64 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = load i32, i32* @asm_file_name, align 4
  %28 = call i32 @fatal_error(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %27)
  br label %29

29:                                               ; preds = %26, %22
  br label %30

30:                                               ; preds = %29, %12
  %31 = call i32 (...) @finish_optimization_passes()
  %32 = load i64, i64* @mem_report, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %30
  %35 = call i32 (...) @ggc_print_statistics()
  %36 = call i32 (...) @stringpool_statistics()
  %37 = call i32 (...) @dump_tree_statistics()
  %38 = call i32 (...) @dump_rtx_statistics()
  %39 = call i32 (...) @dump_varray_statistics()
  %40 = call i32 (...) @dump_alloc_pool_statistics()
  %41 = call i32 (...) @dump_ggc_loc_statistics()
  br label %42

42:                                               ; preds = %34, %30
  %43 = call i32 (...) @free_reg_info()
  %44 = load i32 (...)*, i32 (...)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @lang_hooks, i32 0, i32 0), align 8
  %45 = call i32 (...) %44()
  ret void
}

declare dso_local i64 @fclose(i64) #1

declare dso_local i32 @unlink(i32) #1

declare dso_local i64 @ferror(i64) #1

declare dso_local i32 @fatal_error(i8*, i32) #1

declare dso_local i32 @finish_optimization_passes(...) #1

declare dso_local i32 @ggc_print_statistics(...) #1

declare dso_local i32 @stringpool_statistics(...) #1

declare dso_local i32 @dump_tree_statistics(...) #1

declare dso_local i32 @dump_rtx_statistics(...) #1

declare dso_local i32 @dump_varray_statistics(...) #1

declare dso_local i32 @dump_alloc_pool_statistics(...) #1

declare dso_local i32 @dump_ggc_loc_statistics(...) #1

declare dso_local i32 @free_reg_info(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
