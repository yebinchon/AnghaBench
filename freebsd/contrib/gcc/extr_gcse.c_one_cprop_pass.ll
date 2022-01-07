; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gcse.c_one_cprop_pass.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gcse.c_one_cprop_pass.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }

@local_const_prop_count = common dso_local global i32 0, align 4
@global_const_prop_count = common dso_local global i32 0, align 4
@local_copy_prop_count = common dso_local global i32 0, align 4
@global_copy_prop_count = common dso_local global i32 0, align 4
@rtx = common dso_local global i32 0, align 4
@last_basic_block = common dso_local global i32 0, align 4
@implicit_sets = common dso_local global i32* null, align 8
@max_cuid = common dso_local global i32 0, align 4
@set_hash_table = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@dump_file = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [4 x i8] c"SET\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"CPROP of %s, pass %d: %d bytes needed, \00", align 1
@bytes_used = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [44 x i8] c"%d local const props, %d local copy props, \00", align 1
@.str.3 = private unnamed_addr constant [46 x i8] c"%d global const props, %d global copy props\0A\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @one_cprop_pass to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @one_cprop_pass(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* @local_const_prop_count, align 4
  store i32 0, i32* @global_const_prop_count, align 4
  store i32 0, i32* @local_copy_prop_count, align 4
  store i32 0, i32* @global_copy_prop_count, align 4
  %8 = load i32, i32* %5, align 4
  %9 = call i32 @local_cprop_pass(i32 %8)
  %10 = load i32, i32* @rtx, align 4
  %11 = load i32, i32* @last_basic_block, align 4
  %12 = call i32* @XCNEWVEC(i32 %10, i32 %11)
  store i32* %12, i32** @implicit_sets, align 8
  %13 = call i32 (...) @find_implicit_sets()
  %14 = load i32, i32* @max_cuid, align 4
  %15 = call i32 @alloc_hash_table(i32 %14, %struct.TYPE_6__* @set_hash_table, i32 1)
  %16 = call i32 @compute_hash_table(%struct.TYPE_6__* @set_hash_table)
  %17 = load i32*, i32** @implicit_sets, align 8
  %18 = call i32 @free(i32* %17)
  store i32* null, i32** @implicit_sets, align 8
  %19 = load i64, i64* @dump_file, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %3
  %22 = load i64, i64* @dump_file, align 8
  %23 = call i32 @dump_hash_table(i64 %22, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), %struct.TYPE_6__* @set_hash_table)
  br label %24

24:                                               ; preds = %21, %3
  %25 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @set_hash_table, i32 0, i32 0), align 8
  %26 = icmp sgt i64 %25, 0
  br i1 %26, label %27, label %42

27:                                               ; preds = %24
  %28 = load i32, i32* @last_basic_block, align 4
  %29 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @set_hash_table, i32 0, i32 0), align 8
  %30 = call i32 @alloc_cprop_mem(i32 %28, i64 %29)
  %31 = call i32 (...) @compute_cprop_data()
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @cprop(i32 %32)
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %6, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %27
  %37 = call i32 (...) @bypass_conditional_jumps()
  %38 = load i32, i32* %7, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %7, align 4
  br label %40

40:                                               ; preds = %36, %27
  %41 = call i32 (...) @free_cprop_mem()
  br label %42

42:                                               ; preds = %40, %24
  %43 = call i32 @free_hash_table(%struct.TYPE_6__* @set_hash_table)
  %44 = load i64, i64* @dump_file, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %60

46:                                               ; preds = %42
  %47 = load i64, i64* @dump_file, align 8
  %48 = call i8* (...) @current_function_name()
  %49 = load i32, i32* %4, align 4
  %50 = load i32, i32* @bytes_used, align 4
  %51 = call i32 (i64, i8*, ...) @fprintf(i64 %47, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i8* %48, i32 %49, i32 %50)
  %52 = load i64, i64* @dump_file, align 8
  %53 = load i32, i32* @local_const_prop_count, align 4
  %54 = load i32, i32* @local_copy_prop_count, align 4
  %55 = call i32 (i64, i8*, ...) @fprintf(i64 %52, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %53, i32 %54)
  %56 = load i64, i64* @dump_file, align 8
  %57 = load i32, i32* @global_const_prop_count, align 4
  %58 = load i32, i32* @global_copy_prop_count, align 4
  %59 = call i32 (i64, i8*, ...) @fprintf(i64 %56, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0), i32 %57, i32 %58)
  br label %60

60:                                               ; preds = %46, %42
  %61 = load i32, i32* %7, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %60
  %64 = load i32, i32* %5, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %63
  %67 = call i32 (...) @delete_unreachable_blocks()
  br label %68

68:                                               ; preds = %66, %63, %60
  %69 = load i32, i32* %7, align 4
  ret i32 %69
}

declare dso_local i32 @local_cprop_pass(i32) #1

declare dso_local i32* @XCNEWVEC(i32, i32) #1

declare dso_local i32 @find_implicit_sets(...) #1

declare dso_local i32 @alloc_hash_table(i32, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @compute_hash_table(%struct.TYPE_6__*) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @dump_hash_table(i64, i8*, %struct.TYPE_6__*) #1

declare dso_local i32 @alloc_cprop_mem(i32, i64) #1

declare dso_local i32 @compute_cprop_data(...) #1

declare dso_local i32 @cprop(i32) #1

declare dso_local i32 @bypass_conditional_jumps(...) #1

declare dso_local i32 @free_cprop_mem(...) #1

declare dso_local i32 @free_hash_table(%struct.TYPE_6__*) #1

declare dso_local i32 @fprintf(i64, i8*, ...) #1

declare dso_local i8* @current_function_name(...) #1

declare dso_local i32 @delete_unreachable_blocks(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
