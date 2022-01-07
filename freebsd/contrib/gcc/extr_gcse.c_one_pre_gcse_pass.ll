; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gcse.c_one_pre_gcse_pass.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gcse.c_one_pre_gcse_pass.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }

@gcse_subst_count = common dso_local global i32 0, align 4
@gcse_create_count = common dso_local global i32 0, align 4
@max_cuid = common dso_local global i32 0, align 4
@expr_hash_table = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@flag_gcse_lm = common dso_local global i64 0, align 8
@dump_file = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [11 x i8] c"Expression\00", align 1
@last_basic_block = common dso_local global i32 0, align 4
@edge_list = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"\0APRE GCSE of %s, pass %d: %d bytes needed, \00", align 1
@bytes_used = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"%d substs, %d insns created\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @one_pre_gcse_pass to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @one_pre_gcse_pass(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  store i32 0, i32* @gcse_subst_count, align 4
  store i32 0, i32* @gcse_create_count, align 4
  %4 = load i32, i32* @max_cuid, align 4
  %5 = call i32 @alloc_hash_table(i32 %4, %struct.TYPE_6__* @expr_hash_table, i32 0)
  %6 = call i32 (...) @add_noreturn_fake_exit_edges()
  %7 = load i64, i64* @flag_gcse_lm, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = call i32 (...) @compute_ld_motion_mems()
  br label %11

11:                                               ; preds = %9, %1
  %12 = call i32 @compute_hash_table(%struct.TYPE_6__* @expr_hash_table)
  %13 = call i32 (...) @trim_ld_motion_mems()
  %14 = load i64, i64* @dump_file, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %11
  %17 = load i64, i64* @dump_file, align 8
  %18 = call i32 @dump_hash_table(i64 %17, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), %struct.TYPE_6__* @expr_hash_table)
  br label %19

19:                                               ; preds = %16, %11
  %20 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @expr_hash_table, i32 0, i32 0), align 8
  %21 = icmp sgt i64 %20, 0
  br i1 %21, label %22, label %33

22:                                               ; preds = %19
  %23 = load i32, i32* @last_basic_block, align 4
  %24 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @expr_hash_table, i32 0, i32 0), align 8
  %25 = call i32 @alloc_pre_mem(i32 %23, i64 %24)
  %26 = call i32 (...) @compute_pre_data()
  %27 = call i32 (...) @pre_gcse()
  %28 = load i32, i32* %3, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %3, align 4
  %30 = load i32, i32* @edge_list, align 4
  %31 = call i32 @free_edge_list(i32 %30)
  %32 = call i32 (...) @free_pre_mem()
  br label %33

33:                                               ; preds = %22, %19
  %34 = call i32 (...) @free_ldst_mems()
  %35 = call i32 (...) @remove_fake_exit_edges()
  %36 = call i32 @free_hash_table(%struct.TYPE_6__* @expr_hash_table)
  %37 = load i64, i64* @dump_file, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %49

39:                                               ; preds = %33
  %40 = load i64, i64* @dump_file, align 8
  %41 = call i8* (...) @current_function_name()
  %42 = load i32, i32* %2, align 4
  %43 = load i32, i32* @bytes_used, align 4
  %44 = call i32 (i64, i8*, ...) @fprintf(i64 %40, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i8* %41, i32 %42, i32 %43)
  %45 = load i64, i64* @dump_file, align 8
  %46 = load i32, i32* @gcse_subst_count, align 4
  %47 = load i32, i32* @gcse_create_count, align 4
  %48 = call i32 (i64, i8*, ...) @fprintf(i64 %45, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %46, i32 %47)
  br label %49

49:                                               ; preds = %39, %33
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i32 @alloc_hash_table(i32, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @add_noreturn_fake_exit_edges(...) #1

declare dso_local i32 @compute_ld_motion_mems(...) #1

declare dso_local i32 @compute_hash_table(%struct.TYPE_6__*) #1

declare dso_local i32 @trim_ld_motion_mems(...) #1

declare dso_local i32 @dump_hash_table(i64, i8*, %struct.TYPE_6__*) #1

declare dso_local i32 @alloc_pre_mem(i32, i64) #1

declare dso_local i32 @compute_pre_data(...) #1

declare dso_local i32 @pre_gcse(...) #1

declare dso_local i32 @free_edge_list(i32) #1

declare dso_local i32 @free_pre_mem(...) #1

declare dso_local i32 @free_ldst_mems(...) #1

declare dso_local i32 @remove_fake_exit_edges(...) #1

declare dso_local i32 @free_hash_table(%struct.TYPE_6__*) #1

declare dso_local i32 @fprintf(i64, i8*, ...) #1

declare dso_local i8* @current_function_name(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
